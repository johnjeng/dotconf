-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Frappe"
config.font = wezterm.font("JetBrains Mono")

config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.6
config.window_decorations = "RESIZE"
return config
