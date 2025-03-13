local wezterm = require("wezterm")
local session_mngr = require("plugins.session-manager.session-manager")

wezterm.on("save_session", function(window)
	session_mngr.save_state(window)
end)
wezterm.on("load_session", function(window)
	session_mngr.load_state(window)
end)
wezterm.on("restore_session", function(window)
	session_mngr.restore_state(window)
end)

local base = {
	{ key = "S", mods = "LEADER", action = wezterm.action({ EmitEvent = "save_session" }) },
	{ key = "L", mods = "LEADER", action = wezterm.action({ EmitEvent = "load_session" }) },
	{ key = "R", mods = "LEADER", action = wezterm.action({ EmitEvent = "restore_session" }) },

	{ key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	{ key = "x", mods = "LEADER|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
	{ key = "T", mods = "CTRL|SHIFT", action = wezterm.action.ShowLauncher },
	{
		key = "P",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateCommandPalette,
	},
	{ key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "LeftArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Left", 1 }) },
	{ key = "DownArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Down", 1 }) },
	{ key = "UpArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Up", 1 }) },
	{ key = "RightArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Right", 1 }) },

	{ key = "UpArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(-1) },
	{ key = "DownArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(1) },
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
}

-- Tab
for i = 1, 5, 1 do
	-- CTRL+ALT + number to activate that tab
	table.insert(base, {
		key = tostring(i),
		mods = "CTRL|ALT",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return base
