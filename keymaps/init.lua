local wezterm = require("wezterm")

local keymaps = require("keymaps.linux")

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  keymaps = require("keymaps.window")
end

return keymaps
