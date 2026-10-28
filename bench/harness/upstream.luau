--!strict

local fs = require "@std/fs"
local parser = require "@std/syntax/parser"
local luau = require "@lute/luau"
local Lock = require "../../dependencies.lock"
local Environment = require "../cost-model"

type Module = { path: string }
export type Mode = "as-shipped" | "like-for-like"

local LIKE_FOR_LIKE_DIRECTIVE = "--!optimize 2\n"
local COMPOSE_ROOT = "src"
local boundary = luau.load(luau.compile "return ...", "benchmark-boundary")
local currentMode: Mode = "as-shipped"

local function setMode(mode: Mode)
	currentMode = mode
end

local function mode(): Mode
	return currentMode
end

local function compile(source: string, prefix: string?): luau.Bytecode
	local bound = (prefix or "") .. source
	if currentMode == "like-for-like" then
		return luau.compile(LIKE_FOR_LIKE_DIRECTIVE .. bound)
	end
	return luau.compile(bound)
end

type Node = { [string]: unknown }

local function globalNames(source: string): ({ [string]: boolean }, { [string]: boolean })
	local read: { [string]: boolean } = {}
	local written: { [string]: boolean } = {}
	local function nameOf(node: unknown): string?
		if type(node) ~= "table" then
			return nil
		end
		local expression = node :: Node
		if expression.kind ~= "expr" or expression.tag ~= "global" then
			return nil
		end
		return ((expression.name :: Node).text :: unknown) :: string
	end
	local function walk(node: Node)
		local name = nameOf(node)
		if name then
			read[name] = true
		elseif node.kind == "stat" then
			local targets: { unknown } = {}
			if node.tag == "assign" then
				for _, variable in (node.variables :: unknown) :: { unknown } do
					table.insert(targets, variable)
				end
			elseif node.tag == "compoundassign" then
				table.insert(targets, node.variable)
			elseif node.tag == "function" then
				table.insert(targets, node.name)
			end
			for _, target in targets do
				local assigned = nameOf(target)
				if assigned then
					written[assigned] = true
				end
			end
		end
		for key, value in node do
			if type(key) == "string" and (string.find(key, "rivia") or string.find(key, "ocation")) then
				continue
			end
			if type(value) == "table" then
				walk(value :: Node)
			end
		end
	end
	walk(((parser.parse(source) :: unknown) :: { root: Node }).root)
	return read, written
end

local function boundNames(source: string, globals: { [string]: unknown }): { string }
	local read, written = globalNames(source)
	local names: { string } = {}
	for name in read do
		if
			written[name]
			or name == "script"
			or name == "require"
			or not rawequal(luau.load(luau.compile("return " .. name), "global")(), globals[name])
		then
			table.insert(names, name)
		end
	end
	table.sort(names)
	return names
end

export type Compiled = { bytecode: luau.Bytecode, names: { string } }

local function bind(source: string, globals: { [string]: unknown }, chunk: string?): Compiled
	local names = boundNames(source, globals)
	local nested = false
	while true do
		local prefix = if #names > 0 then "local " .. table.concat(names, ", ") .. " = ...; " else ""
		local body = source
		if nested then
			prefix ..= "return (function(...) "
			body = (source:gsub("\n(%s*)export%s+type%s", "\n%1type "):gsub("^(%s*)export%s+type%s", "%1type "))
				.. "\nend)()"
		end
		local bytecode = compile(body, prefix)
		local ok, problem = pcall(function()
			return luau.load(bytecode, chunk or "bind")
		end)
		if ok then
			return { bytecode = bytecode, names = names }
		end
		local message = tostring(problem)
		local outer = message:match "Type function cannot reference outer local '([%w_]+)'"
		local position = if outer then table.find(names, outer) else nil
		if position then
			table.remove(names, position)
		elseif not nested and message:find("Out of local registers", 1, true) then
			nested = true
		else
			error(problem, 0)
		end
	end
end

local bytecode: { [string]: { [string]: Compiled } } = {}

local function normal(path: string): string
	local parts: { string } = {}
	for part in path:gmatch "[^/]+" do
		if part == ".." then
			assert(#parts > 0, "module path escapes the repository")
			table.remove(parts)
		elseif part ~= "." then
			table.insert(parts, part)
		end
	end
	return table.concat(parts, "/")
end

local function module(path: string): unknown
	return setmetatable({ path = path }, {
		__index = function(_self: unknown, key: string): unknown
			if key == "WaitForChild" or key == "FindFirstChild" then
				return function(_object: unknown, child: string): unknown
					return module(path .. "/" .. child)
				end
			elseif key == "FindFirstAncestor" then
				return function(): unknown
					return nil
				end
			elseif key == "GetFullName" then
				return function(): string
					return path
				end
			end
			return module(if key == "Parent" then path:match "^(.*)/[^/]+$" or "" else path .. "/" .. key)
		end,
	})
end

local function create(environment: Environment.Environment)
	local cache: { [string]: unknown } = {}
	local loaded: { [string]: boolean } = {}
	local paths: { [string]: string } = {}
	local allowed: { string } = {}
	for _, dependency in Lock.dependencies do
		for _, surface in dependency.surfaces do
			if surface.role == "benchmark" then
				table.insert(allowed, ".lute/dependencies/" .. dependency.name .. "/" .. surface.root)
			end
		end
	end
	table.insert(allowed, COMPOSE_ROOT)
	local function resolve(path: string): string
		path = normal(path)
		local present = false
		for _, suffix in { "", ".luau", ".lua", "/init.luau", "/init.lua" } do
			if fs.exists(path .. suffix) and fs.type(path .. suffix) == "file" then
				present = true
				break
			end
		end
		local package = path:match "/([^/]+)$"
		local packages: { [string]: string } = {
			React = "react-upstream/modules/react/src",
			ReactRoblox = "react-upstream/modules/react-roblox/src",
			ReactReconciler = "react-upstream/modules/react-reconciler/src",
			Scheduler = "react-upstream/modules/scheduler/src",
			Shared = "react-upstream/modules/shared/src",
			LuauPolyfill = "polyfill-upstream/modules/luau-polyfill/src",
			Promise = "promise-upstream/lib",
			Symbol = "symbol-upstream/src",
			Signals = "signals/modules/signals/src",
			SignalsExperimental = "signals/modules/signals-experimental/src",
			SignalsScheduler = "signals/modules/signals-scheduler/src",
			SignalsFlags = "signals/modules/signals-flags/src",
		}
		local mapped = if package then packages[package] else nil
		if package == "Promise" and path:find("/reflex/", 1, true) then
			mapped = "reflex-promise/lib"
		end
		if mapped and not present then
			path = ".lute/dependencies/" .. mapped
		elseif not present and path:find("/polyfill-upstream/", 1, true) and package then
			local names: { [string]: string } = {
				Boolean = "boolean",
				Collections = "collections",
				Console = "console",
				ES7Types = "es7-types",
				InstanceOf = "instance-of",
				Math = "math",
				Number = "number",
				String = "string",
				Timers = "timers",
			}
			if names[package] then
				path = ".lute/dependencies/polyfill-upstream/modules/" .. names[package] .. "/src"
			end
		end
		for _, candidate in { path, path .. ".luau", path .. ".lua", path .. "/init.luau", path .. "/init.lua" } do
			if fs.exists(candidate) and fs.type(candidate) == "file" then
				for _, root in allowed do
					if candidate == root or candidate:sub(1, #root + 1) == root .. "/" then
						return candidate
					end
				end
				error("module is outside the benchmark surfaces: " .. candidate, 0)
			end
		end
		error("benchmark module is absent: " .. path, 0)
	end
	local function scan(root: string)
		for _, entry in fs.listDirectory(root) do
			local path = root .. "/" .. entry.name
			if entry.type == "dir" then
				scan(path)
			elseif entry.name:match "%.lua[u]?$" and not entry.name:find(".spec.", 1, true) then
				local name = entry.name:gsub("%.lua[u]?$", "")
				assert(paths[name] == nil, "ambiguous Nevermore module " .. name)
				paths[name] = path
			end
		end
	end
	for _, root in allowed do
		if root:find("/blend/", 1, true) and fs.exists(root) then
			if fs.type(root) == "dir" then
				scan(root)
			else
				local name = root:match "([^/]+)%.lua$"
				if name then
					paths[name] = root
				end
			end
		end
	end
	local load: (string) -> unknown
	function load(request: string): unknown
		local path = resolve(request)
		if loaded[path] then
			return cache[path]
		end
		local globals = table.clone(environment.globals)
		local directory = assert(path:match "^(.*)/[^/]+$")
		local relative = if path:sub(1, #COMPOSE_ROOT + 1) == COMPOSE_ROOT .. "/" and path:match "/init%.luau$"
			then directory .. "/.."
			else directory
		globals.script = module(if path:match "/init%.lua[u]?$" then directory else path:gsub("%.lua[u]?$", ""))
		globals.require = function(target: string | Module): unknown
			if type(target) == "table" then
				if target.path:match "/loader$" then
					return {
						load = function(_script: Module)
							return function(name: string): unknown
								return load((assert(paths[name], "Nevermore module is not locked: " .. name)))
							end
						end,
					}
				end
				return load(target.path)
			end
			if target:sub(1, 5) == "@pkg/" then
				local name = target:gsub("^@pkg/@jsdotlua/", ""):gsub("^@pkg/", "")
				if name == "symbol-luau" then
					return load ".lute/dependencies/symbol/src/init.lua"
				elseif name == "promise" then
					return load ".lute/dependencies/react-promise/lib/init.lua"
				end
				local root = if name == "react"
						or name == "react-roblox"
						or name == "react-reconciler"
						or name == "scheduler"
						or name == "shared"
					then "react"
					else "luau-polyfill"
				return load(".lute/dependencies/" .. root .. "/modules/" .. name .. "/src")
			elseif target:sub(1, 6) == "@self/" then
				return load(directory .. "/" .. target:sub(7))
			end
			return load(relative .. "/" .. target)
		end
		local compiledForMode = bytecode[currentMode]
		if compiledForMode == nil then
			compiledForMode = {}
			bytecode[currentMode] = compiledForMode
		end
		local entry = compiledForMode[path]
		if entry == nil then
			entry = bind(fs.readFileToString(path), (globals :: unknown) :: { [string]: unknown }, "@" .. path)
			compiledForMode[path] = entry
		end
		local values: { unknown } = table.create(#entry.names)
		for index, name in entry.names do
			values[index] = globals[name]
		end
		local result: unknown = luau.load(entry.bytecode, "@" .. path)(table.unpack(values, 1, #entry.names))
		cache[path] = result
		loaded[path] = true
		return result
	end
	return {
		load = function(path: string)
			return boundary(load(path))
		end,
	}
end

return {
	create = create,
	bind = bind,
	compile = compile,
	mode = mode,
	setMode = setMode,
	callback = function(value: unknown): (...unknown) -> ()
		assert(type(value) == "function", "event handler must be a function")
		return boundary(value)
	end,
	entries = function(value: unknown): { [unknown]: unknown }
		assert(type(value) == "table", "children must be a table")
		return boundary(value)
	end,
}
