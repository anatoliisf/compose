--!strict

local function read(value: unknown): { [unknown]: unknown }?
	if type(value) ~= "table" then
		return nil
	end
	return value :: { [unknown]: unknown }
end

return { read = read }
