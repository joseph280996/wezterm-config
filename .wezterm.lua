local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Fonts and Colors
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 9

-- Programs
config.default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe" }
config.launch_menu = {
	{
		label = "Bash",
		args = { "bash" },
	},
}

return config
