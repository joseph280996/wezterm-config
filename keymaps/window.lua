local wezterm = require("wezterm")
local base_km = require('keymaps.base')
local utils = require('utils.tables')

local keymaps = {
	-- Operations
	{ key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "Tab", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "F11", mods = "CTRL", action = wezterm.action.ToggleFullScreen },

	-- Splits
	{
		key = "|",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 20 },
			top_level = false,
		}),
	},

	-- Session
	{
		key = "s",
		mods = "LEADER",
		action = wezterm.action.SwitchToWorkspace({
			name = "School",
			cwd = "~/Code/School/",
		}),
	},
	{
		key = "c",
		mods = "LEADER",
		action = wezterm.action.SwitchToWorkspace({
			name = "Config",
			cwd = "~/AppData/Local/nvim/",
		}),
	},
	{
		key = "w",
		mods = "LEADER",
		action = wezterm.action.SwitchToWorkspace({
			name = "Work",
			cwd = "~/Work/",
		}),
	},
	{
		key = "n",
		mods = "LEADER",
		action = wezterm.action.SwitchToWorkspace({
			name = "Notes",
			cwd = "F:/Notebook/Personal/",
		}),
	},
  -- Disable default assignments
  {
    key = '-',
    mods = 'CTRL',
    action = wezterm.action.DisableDefaultAssignment,
  },
  {
    key = '+',
    mods = 'CTRL',
    action = wezterm.action.DisableDefaultAssignment,
  },
  {
    key = '-',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.DisableDefaultAssignment,
  },
  {
    key = '+',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.DisableDefaultAssignment,
  },
}

return utils.list_extend(base_km, keymaps)
