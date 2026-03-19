local wezterm = require("wezterm")

local base = {
	-- Clipboard Operations
	{ key = "c", mods = "LEADER", action = wezterm.action.ActivateCopyMode },
	{ key = "c", mods = "SUPER", action = wezterm.action.CopyTo("Clipboard") },
	{ key = "v", mods = "SUPER", action = wezterm.action.PasteFrom("Clipboard") },
	-- Window Operations
	{ key = "n", mods = "LEADER", action = wezterm.action.SpawnWindow },
	-- Tab Operations
	{ key = "t", mods = "LEADER", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
	{ key = "T", mods = "LEADER", action = wezterm.action.ShowLauncher },
	{ key = "X", mods = "LEADER", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
	{ key = "]", mods = "LEADER", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "[", mods = "LEADER", action = wezterm.action.ActivateTabRelative(-1) },
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
	{ key = "UpArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Up", 8 }) },
	{ key = "DownArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Down", 8 }) },
	{ key = "LeftArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Left", 16 }) },
	{ key = "RightArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Right", 16 }) },
	{ key = "UpArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(-4) },
	{ key = "DownArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(4) },
	{ key = "f", mods = "LEADER", action = wezterm.action.Search("CurrentSelectionOrEmptyString") },
	-- Miscellaneous
	{ key = "D", mods = "LEADER", action = wezterm.action.ShowDebugOverlay },
}

for i = 1, 5 do
	table.insert(base, {
		key = tostring(i),
		mods = "SUPER",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return base
