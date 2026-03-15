local wezterm = require("wezterm")
local km = require("config.keymaps")
local tabline = require("config.tabline")
local tbl_utils = require("utils.tables")

local M = {
	disable_default_key_bindings = true,
	font_size = 11,
	font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false }),
	keys = km,
	launch_menu = {
		{
			label = "Knowledge Base",
			cwd = wezterm.home_dir .. "/Documents/knowledge-base/",
		},
		{
			label = "Notes",
			cwd = wezterm.home_dir .. "/Documents/notes/",
		},
		{
			label = "Neovim Config",
			cwd = wezterm.home_dir .. "/.config/nvim",
			args = { "/opt/homebrew/bin/fish", "-l", "-c", "nvim" },
		},
		{
			label = "Wezterm Config",
			cwd = wezterm.home_dir .. "/.config/wezterm",
			args = { "/opt/homebrew/bin/fish", "-l", "-c", "nvim" },
		},
		{
			label = "Fish Config",
			cwd = wezterm.home_dir .. "/.config/fish",
			args = { "/opt/homebrew/bin/fish", "-l", "-c", "nvim" },
		},
		{
			label = "Claude Desktop Config",
			cwd = wezterm.home_dir .. "/Library/Application Support/Claude/",
			args = {
				"/opt/homebrew/bin/fish",
				"-l",
				"-c",
				"nvim " .. wezterm.home_dir .. "/claude_desktop_config.json",
			},
		},
		{
			label = "Claude Code Config",
			args = { "/opt/homebrew/bin/fish", "-l", "-c", "nvim " .. wezterm.home_dir .. "/.claude.json" },
		},
		{
			label = "Aerospace Config",
			cwd = wezterm.home_dir .. "/.config/aerospace",
			args = { "/opt/homebrew/bin/fish", "-l", "-c", "nvim" },
		},
		{
			label = "OpenCode Config",
			cwd = wezterm.home_dir .. "/.config/opencode",
			args = { "/opt/homebrew/bin/fish", "-l", "-c", "nvim" },
		},
	},
	-- debug_key_events = true,
	color_scheme = "Kanagawa (Gogh)",
	default_cwd = wezterm.home_dir,
	leader = { key = "/", mods = "CTRL", timeout_milliseconds = 1000 },
}

return tbl_utils.tbl_deep_extend(M, tabline)
