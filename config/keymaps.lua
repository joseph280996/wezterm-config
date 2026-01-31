local wezterm = require("wezterm")

local base = {
	{ key = "c", mods = "LEADER", action = wezterm.action.ActivateCopyMode },
  -- Tab Operations
	{ key = "t", mods = "LEADER", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
	{ key = "T", mods = "LEADER", action = wezterm.action.ShowLauncher },
	{ key = "X", mods = "LEADER", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
	-- Pane Operations
	{ key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	{ key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Right") },
	{
		key = "s",
		mods = "LEADER",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 20 },
			command = { domain = "CurrentPaneDomain" },
		}),
	},
	{
		key = "S",
		mods = "LEADER",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 30 },
			command = { domain = "CurrentPaneDomain" },
		}),
	},
	{ key = "UpArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(-5) },
	{ key = "DownArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(5) },
  -- Miscellaneous
	{ key = "D", mods = "LEADER", action = wezterm.action.ShowDebugOverlay},
}

return base
