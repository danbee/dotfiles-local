local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local act = wezterm.action

config.color_scheme = 'Afterglow'
config.font = wezterm.font 'Source Code Pro'
config.font_size = 14

config.use_fancy_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.keys = {
  { key = "LeftArrow", mods = "CMD", action = act.ActivateTabRelative(-1) },
  { key = "RightArrow", mods = "CMD", action = act.ActivateTabRelative(1) }
}

return config
