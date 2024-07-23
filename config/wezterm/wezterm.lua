local wezterm = require("wezterm")
local config = wezterm.config_builder()

local act = wezterm.action

config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font "MonoLisa"
config.font_size = 13

config.use_fancy_tab_bar = false

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{ key = "LeftArrow", mods = "CMD", action = act.ActivateTabRelative(-1) },
	{ key = "RightArrow", mods = "CMD", action = act.ActivateTabRelative(1) },
}

return config
