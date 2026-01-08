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
	for key, val in pairs(source) do
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
