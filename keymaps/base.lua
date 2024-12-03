local wezterm = require("wezterm")
local session_mngr = require("plugins.session-manager.session-manager")

wezterm.on("save_session", function(window)
	session_mngr.save_state(window)
end)
wezterm.on("load_session", function(window)
	session_mngr.load_state(window)
end)
wezterm.on("restore_session", function(window)
	session_mngr.restore_state(window)
end)

return {
	{ key = "S", mods = "LEADER", action = wezterm.action({ EmitEvent = "save_session" }) },
	{ key = "L", mods = "LEADER", action = wezterm.action({ EmitEvent = "load_session" }) },
	{ key = "R", mods = "LEADER", action = wezterm.action({ EmitEvent = "restore_session" }) },
}
