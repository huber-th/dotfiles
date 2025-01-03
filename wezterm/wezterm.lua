local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 40

config.color_scheme = "catppuccin-mocha"

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_close_confirmation = 'NeverPrompt'

return config
