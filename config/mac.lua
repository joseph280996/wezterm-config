local utils = require('utils.tables')
local km = require("keymaps.base")

utils.tbl_extend(km, require("keymaps.mac"))

return {
	font_size = 12,
	keys = km,
}
