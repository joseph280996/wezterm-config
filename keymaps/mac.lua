local wezterm = require("wezterm")

local keymaps = {
	-- Operations
	{ key = "t", mods = "CTRL|SHIFT", action = wezterm.action.ShowLauncher },
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
	{ key = "h", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivatePaneDirection("Right") },
}

-- Tab
for i = 1, 5, 1 do
	-- CTRL+ALT + number to activate that tab
	table.insert(keymaps, {
		key = tostring(i),
		mods = "CTRL|ALT",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return keymaps
