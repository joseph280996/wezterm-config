local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Fonts and Colors
local options = require("config")

for setting, value in pairs(options) do
	config[setting] = value
end

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config, {
  separator = {
    space = 1,
    left_icon = wezterm.nerdfonts.cod_triangle_right,
    right_icon = wezterm.nerdfonts.cod_triangle_left
  },
	modules = {
		username = {
			enabled = false,
		},
    hostname = {
      icon = wezterm.nerdfonts.fa_laptop
    },
		clock = {
			enabled = false,
		},
	},
})

-- Programs
return config
