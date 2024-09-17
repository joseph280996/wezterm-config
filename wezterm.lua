local wezterm = require("wezterm")

local config = wezterm.config_builder()
-- Fonts and Colors
local options = require("config")

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	table.insert(options.launch_menu, { label = "Pwsh 7", args = { "pwsh" }, domain = { DomainName = "local" } })
	table.insert(options.launch_menu, {
		label = "Bash",
		args = { "bash" },
		domain = { DomainName = "local" },
	})
  config.font_size = 7.5

	config.default_prog = { "pwsh" }

	config.wsl_domains = {
		{ name = "WSL:Arch", distribution = "Arch", default_cwd = "~", default_prog = { "zellij", "-l", "welcome" } },
	}
end

for setting, value in pairs(options) do
	config[setting] = value
end

-- Programs
return config
