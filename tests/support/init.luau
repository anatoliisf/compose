--!strict
local Compose = require "../src/core"
local RobloxEmulator = require "../src/test-scene/roblox"
local TestScene = require "../src/test-scene"
local VerifyRoblox = require "../.lute/dependencies/verify/src/roblox"
local Records = require "../tools/lib/records"

export type World = {
	host: TestScene.TestScene,
	runtime: Compose.Runtime,
	create: (kind: string) -> Compose.Constructor,
	root: Compose.Node,
	settle: () -> (),
	batch: <T...>(body: () -> T...) -> T...,
	pending: () -> number,
}

local function world(options: TestScene.Options?): World
	Compose.__resetForTests()
	local host = TestScene.create(options)
	local runtime = Compose.createRuntime(host.adapter)
	return {
		host = host,
		runtime = runtime,
		create = runtime.create,
		root = host.root,
		settle = function()
			runtime:settle()
		end,
		batch = function<T...>(body: () -> T...): T...
			return runtime:batch(body)
		end,
		pending = function(): number
			return runtime:pending()
		end,
	}
end

local function owned<T>(body: () -> T): (T, Compose.Owner)
	local owner = Compose.createOwner()
	local result = Compose.withOwner(owner, body)
	return result, owner
end

local function emulator(options: VerifyRoblox.EnvironmentOptions?): RobloxEmulator.Emulator
	local environment = VerifyRoblox.testEnvironment(options)
	return RobloxEmulator.create(environment, VerifyRoblox.environmentEngine(environment))
end

local function instance(value: unknown): RobloxEmulator.Instance
	return VerifyRoblox.assertInstance(value)
end

local function weakValues<K, V>(values: { [K]: V })
	setmetatable(values, { __mode = "v" })
end

local function record(value: unknown): { [unknown]: unknown }
	local fields = Records.read(value)
	assert(fields ~= nil)
	return fields
end

local function fieldCount(value: { [unknown]: unknown }): number
	local count = 0
	for _ in value do
		count += 1
	end
	return count
end

local function required<T>(value: T?): T
	assert(value ~= nil)
	return value
end

local function erased(value: unknown): unknown
	return value
end

return {
	datatypes = VerifyRoblox.datatypes,
	erased = erased,
	required = required,
	weakValues = weakValues,
	record = record,
	fieldCount = fieldCount,
	instance = instance,
	emulator = emulator,
	world = world,
	owned = owned,
}
