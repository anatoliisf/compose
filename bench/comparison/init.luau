--!strict

local Blend = require "@self/blend"
local Fusion = require "@self/fusion"
local React = require "@self/react"
local Vide = require "@self/vide"
local Workloads = require "@self/workloads"
local Lock = require "@self/../../dependencies.lock"

local function version(name: string): string
	for _, dependency in Lock.dependencies do
		if dependency.name == name then
			return assert(dependency.version)
		end
	end
	error("benchmark dependency is not locked: " .. name, 0)
end

return {
	{
		name = "fusion",
		version = version "fusion",
		what = "Fusion scoped values and Instances",
		workCounters = false,
		load = Workloads.include("fusion", Fusion.create),
	},
	{
		name = "vide",
		version = version "vide",
		what = "Vide sources, values and scoped cleanup",
		workCounters = false,
		load = Workloads.include("vide", Vide.create),
	},
	{
		name = "react",
		version = version "react",
		what = "React bindings and ReactRoblox legacy roots",
		workCounters = false,
		load = Workloads.include("react", React.create),
	},
	{
		name = "blend",
		version = version "blend",
		what = "Blend states, observables and computed pairs",
		workCounters = false,
		load = Workloads.include("blend", Blend.create),
	},
}
