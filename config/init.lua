local wezterm = require("wezterm")
local config = {
	-- debug_key_events = true,
	color_scheme = "Kanagawa (Gogh)",
	font = wezterm.font("JetBrains Mono"),
	font_size = 9,
	hide_tab_bar_if_only_one_tab = false,
	disable_default_key_bindings = true,
	launch_menu = {
		{
			label = "WSL:Arch",
			domain = { DomainName = "WSL:Arch" },
		},
		{ label = "Python", args = { "python" } },
		{ label = "Node", args = { "node" } },
	},
	keys = require("keymaps"),
	default_cwd = "~",
}

return config
