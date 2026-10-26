--!strict

local fs = require "@std/fs"
local luau = require "@lute/luau"
local Lock = require "../../dependencies.lock"
local Environment = require "../cost-model"

type Module = { path: string }
local boundary = luau.load(luau.compile "return ...", "benchmark-boundary")

local bytecode: { [string]: luau.Bytecode } = {}

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
	local function resolve(path: string): string
		path = normal(path)
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
		if root:find("/blend/", 1, true) then
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
			return load(directory .. "/" .. target)
		end
		local compiled = bytecode[path]
		if compiled == nil then
			compiled = luau.compile(fs.readFileToString(path))
			bytecode[path] = compiled
		end
		local result: unknown = luau.load(compiled, "@" .. path, globals)()
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

return { create = create }
