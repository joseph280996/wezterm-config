local utils = require("utils.tables")
local wezterm = require("wezterm")
local km = require("keymaps.base")

utils.tbl_extend(km, require("keymaps.mac"))

return {
	font_size = 11,
	font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false }),
	keys = km,
}
