local wezterm = require("wezterm")
local config = wezterm.config_builder()

local act = wezterm.action

config.color_scheme = "Srcery (Gogh)"
config.font = wezterm.font "Berkeley Mono"
config.font_size = 14

config.window_decorations = "RESIZE"

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 16,
  right = 16,
  top = 16,
  bottom = 16,
}

config.keys = {
  { key = "LeftArrow",  mods = "CMD", action = act.ActivateTabRelative(-1) },
  { key = "RightArrow", mods = "CMD", action = act.ActivateTabRelative(1) },
}

return config
