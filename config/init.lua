local wezterm = require("wezterm")
local km = require("config.keymaps")
local tabline = require("config.tabline")
local tbl_utils = require('utils.tables')

local M = {
	disable_default_key_bindings = true,
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
		{ label = "Python", args = { "python" } },
		{ label = "Node", args = { "node" } },
	},
	-- debug_key_events = true,
	color_scheme = "Kanagawa (Gogh)",
	default_cwd = "$HOME",
	leader = { key = "/", mods = "CTRL", timeout_milliseconds = 1000 },
}

return tbl_utils.tbl_deep_extend(M, tabline)
