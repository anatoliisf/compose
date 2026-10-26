--!strict

local syntax = require "@std/syntax"
local Records = require "../lib/records"

type Token = { text: string }
export type Global = { name: Token, location: syntax.Span }
export type Group = { expression: unknown }
export type Binary = { operator: Token }
export type Call = { func: unknown, arguments: { unknown }, location: syntax.Span }
export type ConstantString = { quoteStyle: string, value: Token, location: syntax.Span }
export type InterpString = { strings: { { text: string, location: syntax.Span } } }

local function token(value: unknown): Token
	local fields = Records.read(value)
	assert(fields ~= nil)
	local text = fields.text
	assert(type(text) == "string")
	return { text = text }
end

local function span(value: unknown): syntax.Span
	local fields = Records.read(value)
	assert(fields ~= nil)
	local beginLine, beginColumn = fields.beginLine, fields.beginColumn
	local endLine, endColumn = fields.endLine, fields.endColumn
	assert(type(beginLine) == "number" and type(beginColumn) == "number")
	assert(type(endLine) == "number" and type(endColumn) == "number")
	return syntax.span.create {
		beginLine = beginLine,
		beginColumn = beginColumn,
		endLine = endLine,
		endColumn = endColumn,
	}
end

local function expression(value: unknown, tag: string): { [unknown]: unknown }?
	local fields = Records.read(value)
	if fields == nil or fields.kind ~= "expr" or fields.tag ~= tag then
		return nil
	end
	return fields
end

local function global(value: unknown): Global?
	local fields = expression(value, "global")
	return if fields == nil then nil else { name = token(fields.name), location = span(fields.location) }
end

local function group(value: unknown): Group?
	local fields = expression(value, "group")
	return if fields == nil then nil else { expression = fields.expression }
end

local function binary(value: unknown): Binary?
	local fields = expression(value, "binary")
	return if fields == nil then nil else { operator = token(fields.operator) }
end

local function call(value: unknown): Call?
	local fields = expression(value, "call")
	if fields == nil then
		return nil
	end
	local arguments = Records.read(fields.arguments)
	assert(arguments ~= nil)
	local copied: { unknown } = {}
	for index = 1, #arguments do
		copied[index] = arguments[index]
	end
	return { func = fields.func, arguments = copied, location = span(fields.location) }
end

local function constantString(value: unknown): ConstantString?
	local fields = expression(value, "string")
	if fields == nil then
		return nil
	end
	local quoteStyle = fields.quoteStyle
	assert(type(quoteStyle) == "string")
	return { quoteStyle = quoteStyle, value = token(fields.value), location = span(fields.location) }
end

local function interpString(value: unknown): InterpString?
	local fields = expression(value, "interpolatedstring")
	if fields == nil then
		return nil
	end
	local strings = Records.read(fields.strings)
	assert(strings ~= nil)
	local copied: { { text: string, location: syntax.Span } } = {}
	for index = 1, #strings do
		local segment = Records.read(strings[index])
		assert(segment ~= nil)
		copied[index] = { text = token(strings[index]).text, location = span(segment.location) }
	end
	return { strings = copied }
end

return {
	global = global,
	group = group,
	binary = binary,
	call = call,
	constantString = constantString,
	interpString = interpString,
}
