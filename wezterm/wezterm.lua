local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Color scheme and font
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font('MesloLGS Nerd Font Mono')
config.font_size = 14

-- Disable tab bar
config.enable_tab_bar = false

-- Disable title bar but allow resizing
config.window_decorations = "RESIZE"

return config
