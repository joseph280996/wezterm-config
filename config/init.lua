local wezterm = require("wezterm")
local config = require('config.base')
local utils = require('utils')

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  utils.tbl_deep_extend(require('config.window'), config)
end

if wezterm.target_triple == "x86_64-unknown-linux-gnu" then
  utils.tbl_deep_extend(require('config.linux'), config)
end

if wezterm.target_triple == "aarch64-apple-darwin" then
  utils.tbl_deep_extend(require('config.mac'), config)
end


return config
