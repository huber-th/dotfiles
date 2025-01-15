local wezterm = require("wezterm")
local action = wezterm.action
local config = {

    initial_cols = 120,
    initial_rows = 40,

    font = wezterm.font("MesloLGS Nerd Font Mono"),
    font_size = 14,
    scrollback_lines = 100000,

    color_scheme = "catppuccin-latte",

    enable_tab_bar = false,

    window_decorations = "TITLE | RESIZE",
    window_close_confirmation = 'NeverPrompt',

    keys = {
        -- Make Opt-Left equivalent to Opt-B which many line editors interpret as backward-word
        {
            key = 'LeftArrow',
            mods = 'OPT',
            action = action.SendKey {
                key = 'b',
                mods = 'OPT',
            }
        },
        -- Make Opt-Right equivalent to Opt-F which many line editors interpret as forward-word
        {
            key = 'RightArrow',
            mods = 'OPT',
            action = action.SendKey {
                key = 'f',
                mods = 'OPT',
            }
        },
        -- Make Cmd-Left equivalent to Ctrl-a which many line editors interpret as start line
        {
            key = 'LeftArrow',
            mods = 'CMD',
            action = action.SendKey {
                key = 'a',
                mods = 'CTRL',
            }
        },
        -- Make Cmd-Right equivalent to Ctrl-e which many line editors interpret as end line
        {
            key = 'RightArrow',
            mods = 'CMD',
            action = action.SendKey {
                key = 'e',
                mods = 'CTRL',
            }
        },
    },
}
return config
