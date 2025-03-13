local wezterm = require('wezterm')
return {
	-- debug_key_events = true,
	color_scheme = "Kanagawa (Gogh)",
	font = wezterm.font("JetBrains Mono"),
	launch_menu = {
		{ label = "Python", args = { "python" } },
		{ label = "Node", args = { "node" } },
	},
	default_cwd = "~",
}
