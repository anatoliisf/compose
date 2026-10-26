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
	load: (environment: Environment.Environment) -> Loaded,
}

local FRAMEWORKS: { Framework } = {
	{
		name = "bare",
		version = "n/a",
		what = "no framework: plain imperative Luau against the same cost-model environment",
		workCounters = false,
		load = function(environment: Environment.Environment): Loaded
			return { library = environment.globals, extras = {} }
		end,
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

local function available(comparison: boolean?): { Framework }
	if not comparison then
		return FRAMEWORKS
	end
	local result = table.clone(FRAMEWORKS)
	for _, framework in require "../comparison" do
		table.insert(result, framework)
	end
	return result
end

return {
	available = available,
}
