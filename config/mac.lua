local utils = require('utils')
local km = require("keymaps.base")

utils.tbl_extend(km, require("keymaps.mac"))

return {
	font_size = 12,
	keys = km,
	hide_tab_bar_if_only_one_tab = false,
}
