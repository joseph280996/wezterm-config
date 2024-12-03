local utils = require('utils')

return {
	font_size = 12,
	keys = utils.tbl_extend(require("keymaps.base"), require("keymaps.mac")),
	hide_tab_bar_if_only_one_tab = false,
}
