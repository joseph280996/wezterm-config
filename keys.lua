local wezterm = require("wezterm")
return {
	{ key = "w", mods = "CTRL", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	{
		key = '"',
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			command = { args = { "pwsh" } },
			size = { Percent = 20 },
		}),
	},
}
