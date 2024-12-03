local wezterm = require('wezterm')
return {
	-- debug_key_events = true,
	color_scheme = "Kanagawa (Gogh)",
	font = wezterm.font("JetBrains Mono"),
	disable_default_key_bindings = true,
  disable_default_mouse_bindings = true,
	launch_menu = {
		{ label = "Python", args = { "python" } },
		{ label = "Node", args = { "node" } },
	},
	default_cwd = "~",
	leader = { key = "\\", mods = "CTRL", timeout_milliseconds = 1000 },
}
