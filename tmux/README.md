# :wrench: tmux Configuration

This repository contains my personal tmux configuration file that I've
customized to improve my terminal experience. It includes useful key
bindings, enhanced pane management, and plugin integrations. I designed
this configuration with productivity in mind, especially since I
frequently use tmux with Vim.

## :sparkles: Key Features

- **Custom Prefix Key:**
  I changed the default tmux command key to `Ctrl + f` instead of the usual
`Ctrl + b`, which feels more intuitive to me, especially since I'm using the
Colemak DH keyboard layout.

- **Scrollback Buffer:**
  I increased the scrollback buffer size to `99999` lines, making it easier for me to navigate through a large amount of output.

- **Window & Pane Indexing:**
  I set the starting index for windows and panes to `1` instead of `0` to align more closely with keyboard layouts.

- **Pane Splitting:**
  I set up the - and \ shortcuts to split panes for convenience, and ensured that new panes open in the same directory as the one where the command was executed.

- **Resize Panes with Arrow Keys:**
  I find it convenient to resize tmux panes using the arrow keys:
  - `Ctrl + f + y`: Resize left
  - `Ctrl + f + u`: Resize down
  - `Ctrl + f + i`: Resize up
  - `Ctrl + f + o`: Resize right

- **Smart Pane Switching with Vim Awareness:**
  One of my favorite features is the smart pane switching, which automatically detects if I’m in a Vim session and lets me use Vim’s keybindings to navigate between tmux panes:
  - `Ctrl + h`: Move left
  - `Ctrl + j`: Move down
  - `Ctrl + k`: Move up
  - `Ctrl + l`: Move right

- **Window Renaming:**
  Windows automatically get renamed to the current directory, which helps me keep track of which project or directory I'm working on.

- **Reload Configuration:**
  I can quickly reload my tmux configuration by pressing `Ctrl + f + r`, which is super convenient when I'm making changes.

- **Session Management Shortcuts:**
  I’ve set up these shortcuts to make session and pane management quicker:
  - `Ctrl + f + n`: Create a new session
  - `Ctrl + f + e`: Kill the current pane
  - `Ctrl + f + q`: Kill the current session

## :electric_plug: Plugins

This configuration includes a set of plugins that I find useful and extend tmux's functionality:

- **catppuccin/tmux:**
  I use the [Catppuccin](https://github.com/catppuccin/tmux) Mocha theme for tmux because it’s visually appealing and easy on the eyes.

- **tmux-plugins/tmux-sensible:**
  This plugin provides a sensible set of default tmux options for a more consistent experience.

- **tmux-plugins/tmux-resurrect:**
  This plugin helps me restore my tmux sessions after a restart, which is incredibly useful when I’m working on long-running tasks.

- **tmux-plugins/tmux-continuum:**
  I have this plugin enabled to automatically save and restore my tmux sessions at regular intervals.
