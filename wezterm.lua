local wezterm = require("wezterm")

local config = wezterm.config_builder()
-- Fonts and Colors
local options = {
	-- debug_key_events = true,
	color_scheme = "Kanagawa (Gogh)",
	font = wezterm.font("JetBrains Mono"),
	font_size = 9,
	enable_tab_bar = false,
	disable_default_key_bindings = true,
	launch_menu = {
		{
			label = "WSL:Arch",
			domain = { DomainName = "WSL:Arch" },
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
	table.insert(options.launch_menu, { label = "Bash", args = { "bash" }, domain = { DomainName = "local" } })
	table.insert(options.launch_menu, { label = "Pwsh 7", args = { "pwsh" }, domain = { DomainName = "local" } })
	options["default_prog"] = { "C:/Program Files/PowerShell/7/pwsh.exe" }
	config.wsl_domains = {
		{ name = "WSL:Arch", distribution = "Arch", default_cwd = "~" },
	}
end

for setting, value in pairs(options) do
	config[setting] = value
end

-- Programs
return config
