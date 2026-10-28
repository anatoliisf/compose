--!strict

local Core = require "../../src/core"
local ComposeRoblox = require "../../src/roblox"
local ComposeEngine = require "../harness/compose-engine"
local Environment = require "../cost-model"
local Types = require "./types"

local function create(environment: Environment.Environment): Types.Driver
	Core.__resetForTests()
	ComposeRoblox.__resetForTests()
	local runtime = ComposeRoblox.createRuntime(ComposeEngine.engineFor(environment))
	local Host = runtime.constructors
	local scope: Types.Scope
	scope = {
		spring = function(target: Types.Source<number>, offset: number): unknown
			local cell = target.binding :: Core.Value<number>
			local moved = runtime.spring(function(use: Core.Use): number
				return use(cell) + offset
			end, { period = 0.3, damping = 1 })
			return function(use: Core.Use): number
				return math.round(use(moved))
			end
		end,
		counterState = function(initial: number): Types.CounterState
			local text = scope.value(initial)
			return {
				node = scope.node(
					"TextLabel",
					{ Text = text.bind(function(current: number): unknown
						return tostring(current)
					end) }
				),
				write = text.write,
			}
		end,
		value = function<T>(initial: T): Types.Source<T>
			local cell = Core.cell(initial)
			return {
				binding = cell,
				read = function(): T
					return cell:peek()
				end,
				write = function(next: T)
					cell:set(next)
				end,
				bind = function(map: (T) -> unknown): unknown
					return function(use: Core.Use): unknown
						return map(use(cell))
					end
				end,
			}
		end,
		node = function(class: string, properties: Types.Properties, children: { unknown }?): unknown
			local props = table.clone(properties)
			if children then
				for index, child in children do
					props[index] = child
				end
			end
			local constructors = (Host :: unknown) :: { [string]: (Types.Properties) -> unknown }
			return constructors[class](props)
		end,
		keyed = function(list: Types.Source<{ Types.Row }>): unknown
			return Core.keyed {
				from = list.binding :: Core.Value<{ Types.Row }>,
				render = function(row: Core.ReadOnlyValue<Types.Row>, index: Core.ReadOnlyValue<number>): unknown
					return Host.TextLabel {
						Text = tostring(row:peek().id),
						LayoutOrder = function(use: Core.Use)
							return use(index)
						end,
					}
				end,
			}
		end,
		branch = function(open: Types.Source<boolean>, build: (Types.Scope) -> unknown): unknown
			local cell = open.binding :: Core.Value<boolean>
			return Core.show(function(use: Core.Use)
				return use(cell)
			end, function()
				return build(scope)
			end)
		end,
		event = function(name: string): unknown
			return Core.event(name)
		end,
	}
	return {
		mount = function(container: Environment.Instance, build: (Types.Scope) -> unknown): () -> ()
			local dispose = runtime.mount(function()
				return (build(scope) :: unknown) :: Core.Node
			end, container)
			return dispose
		end,
		batch = function(run: () -> ())
			runtime:batch(run)
			environment.drain()
		end,
	}
end

return { create = create }
