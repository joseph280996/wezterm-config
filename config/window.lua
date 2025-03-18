local utils = require("utils.tables")
local km = require("keymaps.base")
utils.tbl_extend(require("keymaps.base"), require("keymaps.window"))

return {
	launch_menu = {
		{
			label = "Bash (local)",
			args = { "bash" },
			domain = "DefaultDomain",
		},
		{
			label = "Pwsh 7 (local)",
			args = { "pwsh" },
			domain = "DefaultDomain",
		},
		{
			label = "Fish (Arch WSL)",
			domain = { DomainName = "WSL-Arch" },
		},
	},
	default_prog = { "C:/Program Files/Git/bin/bash" },
	font_size = 7.5,
	wsl_domains = {
		{ name = "WSL-Arch", distribution = "Arch", default_cwd = "~" },
	},
	keys = km,
	default_workspace = "default",
}
