local wezterm = require("wezterm")

local keymaps = {
  -- Pane
	{ key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	-- Operations
	{ key = "x", mods = "LEADER|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
	{ key = "t", mods = "CTRL|SHIFT", action = wezterm.action.ShowLauncher },
	{ key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "Tab", mods = "CTRL|ALT|SHIFT", action = wezterm.action.ActivateTabRelative(-1) },
	{
		key = "P",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateCommandPalette,
	},
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

	-- Movements
	{ key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Right") },

	{ key = "LeftArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Left", 1 }) },
	{ key = "DownArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Down", 1 }) },
	{ key = "UpArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Up", 1 }) },
	{ key = "RightArrow", mods = "LEADER", action = wezterm.action.AdjustPaneSize({ "Right", 1 }) },

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
    action = wezterm.action.SwitchToWorkspace {
      name = "School",
      cwd = "~/Code/School/"
    }
  },
  {
    key = "w",
    mods = "LEADER",
    action = wezterm.action.SwitchToWorkspace {
      name = "Work",
      cwd = "~/Work/"
    }
  },
  {
    key = "n",
    mods = "LEADER",
    action = wezterm.action.SwitchToWorkspace {
      name = "Notes",
      cwd = "F:/Notebook/Personal/"
    }
  }
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
