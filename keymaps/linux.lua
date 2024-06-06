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
}
