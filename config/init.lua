local wezterm = require("wezterm")
local config = require("config.base")
local utils = require("utils")

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config = utils.tbl_deep_extend(config, require("config.window"))
end

if wezterm.target_triple == "aarch64-apple-darwin" then
	config = utils.tbl_deep_extend(config, require("config.mac"))
end

return config
