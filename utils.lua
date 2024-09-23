local M = {}

local is_list = function(tbl)
	return type(tbl) == "table" and (#tbl > 0 or next(tbl) == nil)
end

M.tbl_extend = function(source, target)
	for key, value in pairs(source) do
		target[key] = value
	end
end

M.list_extend = function(source, target)
	for index = 1, #source do
		table.insert(target, source[index])
	end
end

M.tbl_deep_extend = function(source, target)
	for key, val in pairs(source) do
		if target[key] == nil then
			target[key] = val
		elseif is_list(val) then
			M.list_extend(source[key], target[key])
		elseif type(source[key]) == "table" then
			M.tbl_deep_extend(source[key], target[key])
		else
			target[key] = val
		end
	end
end

return M
