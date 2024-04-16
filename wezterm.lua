local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Fonts and Colors
local options = {
  color_scheme = 'Kanagawa (Gogh)',
	font = wezterm.font("JetBrains Mono"),
	font_size = 9,
	hide_tab_bar_if_only_one_tab = true,

	default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe" },
	launch_menu = {
		{
			label = "Bash",
			args = { "bash" },
		},
		{ label = "Htop", args = { "htop" } },
    { label = "Python", args = { "python" }}
	},
}

for setting, value in pairs(options) do
	config[setting] = value
end

-- Programs
return config