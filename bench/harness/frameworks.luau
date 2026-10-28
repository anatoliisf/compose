--!strict

local ComposeCore = require "../../src/core"
local ComposeRoblox = require "../../src/roblox"
local ComposeEngine = require "./compose-engine"
local Environment = require "../cost-model"

type Extras = { runtime: ComposeCore.Runtime? }

export type Loaded<L = unknown, E = Extras> = {
	library: L,
	extras: E,
}

export type Framework = {
	name: string,
	version: string,
	what: string,
	workCounters: boolean,
	shared: boolean?,
	writesEveryValue: boolean?,
	load: (environment: Environment.Environment) -> Loaded,
}

export type Opened = {
	environment: Environment.Environment,
	loaded: Loaded,
}

local function bareLoad(environment: Environment.Environment): Loaded
	return { library = environment.globals, extras = {} }
end

local FRAMEWORKS: { Framework } = {
	{
		name = "bare",
		version = "n/a",
		what = "no framework: plain imperative Luau against the same cost-model environment",
		workCounters = false,
		load = bareLoad,
	},
	{
		name = "compose",
		version = "0.1.0-dev",
		what = "this repository, through its Roblox adapter",
		workCounters = true,
		load = function(environment: Environment.Environment): Loaded
			ComposeCore.__resetForTests()
			ComposeRoblox.__resetForTests()
			local engine = ComposeEngine.engineFor(environment)
			local runtime = ComposeRoblox.createRuntime(engine)
			return {
				library = ComposeCore,
				extras = { runtime = runtime },
			}
		end,
	},
}

local SHARED_BARE: Framework = {
	name = "bare",
	version = "n/a",
	what = "no framework: plain imperative Luau against the same cost-model environment",
	workCounters = false,
	shared = true,
	load = bareLoad,
}

local sessions: { [string]: Opened } = {}

local function open(framework: Framework): Opened
	if framework.shared then
		local existing = sessions[framework.name]
		if existing ~= nil then
			return existing
		end
	end
	local environment = Environment.create()
	local opened: Opened = { environment = environment, loaded = framework.load(environment) }
	if framework.shared then
		sessions[framework.name] = opened
		environment.drain()
	end
	return opened
end

local function close(framework: Framework)
	sessions[framework.name] = nil
end

local function available(comparison: boolean?): { Framework }
	if not comparison then
		return FRAMEWORKS
	end
	local result: { Framework } = { SHARED_BARE }
	for _, entry in require "../comparison" do
		table.insert(result, {
			name = entry.name,
			version = entry.version,
			what = entry.what,
			workCounters = entry.workCounters,
			shared = true,
			writesEveryValue = entry.writesEveryValue,
			load = entry.load,
		})
	end
	return result
end

return {
	available = available,
	open = open,
	close = close,
}
