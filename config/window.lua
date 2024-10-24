return {
	hide_tab_bar_if_only_one_tab = false,
	launch_menu = {
		{
			label = "Default Arch WSL",
			domain = { DomainName = "WSL-Arch" },
		},
		{ label = "Pwsh 7", args = { "pwsh" }, domain = { DomainName = "local" } },
		{
			label = "Bash",
			args = { "bash" },
			domain = { DomainName = "local" },
		},
	},
	font_size = 7.5,
	default_prog = { "pwsh" },
	wsl_domains = {
		{ name = "WSL-Arch", distribution = "Arch", default_cwd = "~" },
	},
	keys = require("keymaps.window"),
	default_workspace = "default",
	leader = { key = "\\", mods = "CTRL", timeout_milliseconds = 1000 },
}
