local wezterm = require("wezterm")

return {
	-- Operations
	{
		key = "c",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CopyTo("Clipboard"),
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{ key = "F11", mods = "CTRL", action = wezterm.action.ToggleFullScreen },

	-- Menu
	{
		key = "P",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateCommandPalette,
	},
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ShowLauncher,
	},

  -- Navigation
	{ key = "h", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivatePaneDirection("Right") },

	{ key = "LeftArrow", mods = "CTRL|ALT|SHIFT", action = wezterm.action.AdjustPaneSize({ "Left", 1 }) },
	{ key = "DownArrow", mods = "CTRL|ALT|SHIFT", action = wezterm.action.AdjustPaneSize({ "Down", 1 }) },
	{ key = "UpArrow", mods = "CTRL|ALT|SHIFT", action = wezterm.action.AdjustPaneSize({ "Up", 1 }) },
	{ key = "RightArrow", mods = "CTRL|ALT|SHIFT", action = wezterm.action.AdjustPaneSize({ "Right", 1 }) },
}
