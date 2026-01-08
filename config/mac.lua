local utils = require("utils.tables")
local wezterm = require("wezterm")
local km = require("keymaps.base")

utils.tbl_extend(km, require("keymaps.mac"))

return {
	font_size = 11,
	font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false }),
	keys = km,
	launch_menu = {
		{
			label = "Knowledge Base",
      cwd = "/Users/tpham4/Documents/knowledge-base/",
		},
		{
			label = "JIRA Notes",
      cwd = "/Users/tpham4/Documents/notes/",
		},
		{
			label = "Neovim Config",
      cwd = "/Users/tpham4/.config/nvim",
		},
		{
			label = "Wezterm Config",
      cwd = "/Users/tpham4/.config/wezterm",
		},
	},
}
