--!strict

local Compose = require "../../src/core"
local Support = require "../support"
local Test = require "../harness"

local describe, it, expect = Test.describe, Test.it, Test.expect

describe("structural arguments", function()
	it("takes a cell directly, not only a body", function()
		local world = Support.world()
		local rows = Compose.cell { { id = 1 }, { id = 2 } }
		local Label = world.create "Label"

		local dispose, root = world.runtime.mount(function()
			return (world.create "Frame") {
				Compose.keyed {
					from = rows,
					key = function(row: { id: number })
						return row.id
					end,
					render = function()
						return Label {}
					end,
				},
			}
		end, world.root)

		expect(#world.host.childrenOf(root)):toBe(2)
		dispose()
	end)

	it("names a source it cannot read", function()
		local world = Support.world()
		expect(function()
			world.runtime.mount(function()
				return (world.create "Frame") {
					Compose.keyed {
						from = (Support.erased(3)) :: Compose.ReadOnlyValue<{ unknown }>,
						render = (Support.erased(function() end)) :: (
							Compose.ReadOnlyValue<unknown>,
							Compose.ReadOnlyValue<number>,
							unknown
						) -> Compose.Node,
					},
				}
			end, world.root)
		end):toThrow "structure/source-not-readable"
	end)

	it("names a render it cannot call", function()
		local world = Support.world()
		expect(function()
			world.runtime.mount(function()
				return (world.create "Frame") {
					Compose.keyed {
						from = Compose.cell {},
						render = (Support.erased "not a function") :: (
							Compose.ReadOnlyValue<unknown>,
							Compose.ReadOnlyValue<number>,
							unknown
						) -> Compose.Node,
					},
				}
			end, world.root)
		end):toThrow "structure/builder-not-a-function"
	end)

	it("names the positional call it no longer takes", function()
		local world = Support.world()
		local rows = Compose.cell {}
		expect(function()
			world.runtime.mount(function()
				return (world.create "Frame") {
					(
						(
							Support.erased(Compose.keyed)
						) :: (Compose.ReadOnlyValue<{ unknown }>, () -> ()) -> Compose.Directive
					)(rows, function() end),
				}
			end, world.root)
		end):toThrow "structure/options-not-a-table"
	end)

	it("names an option it does not have", function()
		local world = Support.world()
		expect(function()
			world.runtime.mount(function()
				return (world.create "Frame") {
					Compose.keyed {
						from = Compose.cell {},
						render = (Support.erased(function() end)) :: (
							Compose.ReadOnlyValue<unknown>,
							Compose.ReadOnlyValue<number>,
							unknown
						) -> Compose.Node,
						keyOf = function() end,
					},
				}
			end, world.root)
		end):toThrow "structure/unknown-option"
	end)

	it("names a condition it cannot read", function()
		local world = Support.world()
		expect(function()
			world.runtime.mount(function()
				return (world.create "Frame") {
					Compose.show((Support.erased(3)) :: Compose.Source<boolean>, function()
						return world.create "Frame" {}
					end),
				}
			end, world.root)
		end):toThrow "structure/source-not-readable"
	end)

	it("names a builder that is not a function, rather than failing inside debug.info", function()
		local world = Support.world()
		expect(function()
			world.runtime.mount(function()
				return (world.create "Frame") {
					Compose.show(Compose.cell(true), (Support.erased {}) :: () -> Compose.Node),
				}
			end, world.root)
		end):toThrow "structure/builder-not-a-function"
	end)

	it("takes a cell as a condition", function()
		local world = Support.world()
		local open = Compose.cell(true)
		local Frame = world.create "Frame"

		local dispose, root = world.runtime.mount(function()
			return Frame {
				Compose.show(open, function()
					return Frame {}
				end),
			}
		end, world.root)

		expect(#world.host.childrenOf(root)):toBe(1)
		open:set(false)
		world.settle()
		expect(#world.host.childrenOf(root)):toBe(0)
		dispose()
	end)
end)

return nil
