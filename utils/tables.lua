local M = {}

local is_list = function(tbl)
	return type(tbl) == "table" and (#tbl > 0 or next(tbl) == nil)
end

--- Shallow merge the two Lua table together.
---@param source table The table where you want to take the values from
---@param target table The table where you want to apply the values to
---@param behavior? "force"|"keep" How to handle conflicts (defaults to "force")
---   - "force": Source values overwrite target values
---   - "keep": Target values are preserved, source values ignored
M.tbl_extend = function(target, source, behavior)
	local merged_list = {}
	local defaulted_behavior = behavior or "force"
	if defaulted_behavior == "keep" then
		return M.tbl_extend(source, target, "force")
	end
	for index = 1, #target do
		table.insert(merged_list, source[index])
	end
	for index = 1, #source do
		table.insert(merged_list, source[index])
	end
	return merged_list
end

M.list_extend = function(source, target)
	local merged_list = {}
	for index = 1, #target do
		table.insert(merged_list, target[index])
	end

	for index = 1, #source do
		table.insert(merged_list, source[index])
	end

	return merged_list
end

M.tbl_deep_extend = function(source, target)
	local merge_result = {}
	for key, val in pairs(target) do
		merge_result[key] = val
	end

	for key, val in pairs(source) do
		if merge_result[key] == nil then
			merge_result[key] = val
		elseif is_list(val) then
			merge_result[key] = M.list_extend(source[key], merge_result[key])
		elseif type(source[key]) == "table" then
			merge_result[key] = M.tbl_deep_extend(source[key], merge_result[key])
		else
			merge_result[key] = val
		end
	end

	return merge_result
end

return M
