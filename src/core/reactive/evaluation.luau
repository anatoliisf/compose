--!strict
--!native

local Types = require "./types"
local Weak = require "../weak"

type Node = Types.Node

export type Evaluation = { consumer: Node?, order: number }

local evaluations: { [thread]: Evaluation } = {}
Weak.keys(evaluations)
local evaluating: { [thread]: Evaluation } = {}
Weak.keys(evaluating)
local order = 0
local cachedThread: thread? = nil
local cachedFrame: Evaluation? = nil

local function context(): Node?
	local running = coroutine.running()
	if running == cachedThread then
		local cached = cachedFrame
		if cached ~= nil and cached.order > 0 then
			return cached.consumer
		end
	end
	local own = evaluations[running]
	if own ~= nil and own.order > 0 then
		return own.consumer
	end
	local inherited: Evaluation? = nil
	for thread, evaluation in evaluating do
		if
			evaluation.order > 0
			and coroutine.status(thread) == "normal"
			and (inherited == nil or evaluation.order > inherited.order)
		then
			inherited = evaluation
		end
	end
	return if inherited ~= nil then inherited.consumer else nil
end

local function frame(): Evaluation
	local running = coroutine.running()
	if running == cachedThread and cachedFrame ~= nil then
		return cachedFrame
	end
	local current = evaluations[running]
	if current == nil then
		local made: Evaluation = { consumer = nil, order = 0 }
		evaluations[running] = made
		current = made
	end
	cachedThread = running
	cachedFrame = current
	return current
end

local function enter(consumer: Node?): (Node?, number)
	local running = coroutine.running()
	local cached = if running == cachedThread then cachedFrame else nil
	local current: Evaluation = if cached ~= nil then cached else frame()
	local previousConsumer, previousOrder = current.consumer, current.order
	if previousOrder == 0 then
		evaluating[running] = current
	end
	order += 1
	current.consumer = consumer
	current.order = order
	return previousConsumer, previousOrder
end

local function snapshot(): (Node?, number)
	local current = frame()
	return current.consumer, current.order
end

local function leave(previousConsumer: Node?, previousOrder: number)
	local running = coroutine.running()
	local cached = if running == cachedThread then cachedFrame else nil
	local current: Evaluation = if cached ~= nil then cached else frame()
	current.consumer = previousConsumer
	current.order = previousOrder
	if previousOrder == 0 then
		evaluating[running] = nil
	end
end

return {
	context = context,
	enter = enter,
	snapshot = snapshot,
	leave = leave,
}
