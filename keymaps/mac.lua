local wezterm = require("wezterm")

local keymaps = {
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
}

return keymaps
