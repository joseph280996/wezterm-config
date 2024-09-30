local wezterm = require('wezterm')
return {
	-- debug_key_events = true,
	color_scheme = "Kanagawa (Gogh)",
	font = wezterm.font("JetBrains Mono"),
	hide_tab_bar_if_only_one_tab = false,
	disable_default_key_bindings = true,
  disable_default_mouse_bindings = true,
	launch_menu = {
		{ label = "Python", args = { "python" } },
		{ label = "Node", args = { "node" } },
	},
	default_cwd = "~",
}
