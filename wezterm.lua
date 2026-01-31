local wezterm = require("wezterm")
local config = wezterm.config_builder()

local options = require("config")

for setting, value in pairs(options) do
	config[setting] = value
end

-- Programs
return config
