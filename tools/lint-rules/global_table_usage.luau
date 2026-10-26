--!strict

local path = require "@std/path"
local query = require "@std/syntax/query"
local syntax = require "@std/syntax"
local Nodes = require "./nodes"
local Records = require "../lib/records"

type Violation = {
	lintname: string,
	location: syntax.Span,
	message: string,
	severity: "error" | "warning" | "info" | "hint",
	sourcepath: path.Path?,
}

type Global = Nodes.Global

local NAME = "global_table_usage"

local FLAGGED: { [string]: boolean } = { _G = true, shared = true }

local function toSlashes(value: string): string
	local normalised = string.gsub(value, "\\", "/")
	return normalised
end

local function isAllowed(sourcepath: path.Path?, options: { [unknown]: unknown }): boolean
	local allow = Records.read(options.allow)
	if allow == nil or sourcepath == nil then
		return false
	end

	local actual = toSlashes(tostring(sourcepath))
	for _, entry in allow do
		if type(entry) == "string" then
			local wanted = toSlashes(entry)
			if actual == wanted or string.sub(actual, -(#wanted + 1)) == "/" .. wanted then
				return true
			end
		end
	end
	return false
end

local function asGlobal(node: syntax.CstNode): Global?
	return Nodes.global(node)
end

local function lint(cst: syntax.CstStatBlock, sourcepath: path.Path?, context: unknown): { Violation }
	local record = Records.read(context)
	local options = if record ~= nil then Records.read(record.options) or {} else {}

	if isAllowed(sourcepath, options) then
		return {}
	end

	return query
		.findAllFromRoot(cst, asGlobal)
		:filter(function(node: Global): boolean
			return FLAGGED[node.name.text] == true
		end)
		:mapToArray(function(node: Global): Violation
			return {
				lintname = NAME,
				location = node.location,
				message = ("`%s` is process-wide mutable state: it outlives every owner and is invisible to the inspector. Pass the value, or put it under an owner."):format(
					node.name.text
				),
				severity = "warning",
				sourcepath = sourcepath,
			}
		end)
end

return table.freeze { name = NAME, lint = lint }
