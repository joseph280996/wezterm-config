local wezterm = require("wezterm")

local config = wezterm.config_builder()
-- Fonts and Colors
local options = {
	-- debug_key_events = true,
	color_scheme = "Kanagawa (Gogh)",
	font = wezterm.font("JetBrains Mono"),
	font_size = 10,
	hide_tab_bar_if_only_one_tab = true,
	disable_default_key_bindings = true,
	launch_menu = {
		{ label = "Pwsh 7", args = { "pwsh" } },
		{
			label = "Bash",
			args = { "bash" },
		},
		{ label = "Htop", args = { "htop" } },
		{ label = "Python", args = { "python" } },
		{ label = "LazyGit", args = { "LazyGit" } },
		{ label = "Node", args = { "node" } },
	},
	keys = require("keymaps"),
	default_cwd = "~",
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.wsl_domains = {
		{ name = "WSL:Arch", distribution = "Arch", default_cwd = "~" },
	}
	config.default_domain = "WSL:Arch"
end

for setting, value in pairs(options) do
	config[setting] = value
end

-- Programs
return config
