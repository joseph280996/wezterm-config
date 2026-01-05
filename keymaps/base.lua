local wezterm = require("wezterm")

local base = {
  { key = "x", mods = "LEADER",       action = wezterm.action.CloseCurrentPane({ confirm = true }) },
  { key = "x", mods = "LEADER|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
  { key = "T", mods = "CTRL|SHIFT",   action = wezterm.action.ShowLauncher },
  {
    key = "P",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateCommandPalette,
  },
  { key = "h",          mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Left") },
  { key = "j",          mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Down") },
  { key = "k",          mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Up") },
  { key = "l",          mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Right") },
  { key = "s",          mods = "LEADER", action = wezterm.action.SplitVertical({ domain = 'CurrentPaneDomain' }) },
  { key = "UpArrow",    mods = "SHIFT",  action = wezterm.action.ScrollByLine(-1) },
  { key = "DownArrow",  mods = "SHIFT",  action = wezterm.action.ScrollByLine(1) },
}

return base
