# :wrench: Neovim configuration

[Lazy.vim](https://lazy.folke.io) is my package manager of choice. A Neovim
plugin manager designed for speed and efficiency, providing lazy loading of
plugins to improve startup time and resource usage while maintaining
flexibility in plugin management.

## :electric_plug: Plugins

Below is a list of all the plugins I am currently using in alphabetic order.

### [bufferline](https://github.com/akinsho/bufferline.vim)

Open buffers as a tab-like bar at the top,
allowing easy navigation and management of buffers with visual indicators.

### [catppuccin/nvim](https://github.com/catppuccin/nvim)

Soothing pastel-themed color scheme with customization options,
designed to enhance readability and aesthetic consistency.

### [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)

Provides easy commenting functionality for code and text, supporting custom key mappings

### [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

Renders Markdown files in a web browser, offering a live preview that updates as you edit.

### [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

Adds visual indentation guides to blank lines,
helping to highlight code structure and nested blocks.

### [copilot.vim](https://github.com/github/copilot.vim)

Enables GitHub co-pilot integration

_Info: This plugin is only loaded if the file '~/.config/nvim_flags/copilot_enabled' exists._

### [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

Provides Git integration, showing signs in the gutter for changes, staged lines,
and allowing inline blame, hunk actions, and live diffs.

### [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

A customizable statusline plugin for Neovim, allowing dynamic displays
of information like mode, file name, diagnostics, and more.

### [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

Completion plugin for Neovim that provides intelligent,
customizable autocompletion for various sources, such as files,
snippets, and language servers, enhancing the editing experience.

### [nvim-lint](https://github.com/mfussenegger/nvim-lint)

Provides linting support by integrating various linters for real-time
syntax and error checking, displaying warnings and errors directly in the editor.

### [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

Simplifies the setup and configuration of Language Server Protocol (LSP) servers,
enabling features like autocompletion, linting, and code navigation within Neovim.

### [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim)

Highly extensible fuzzy finder plugin for Neovim that allows you to search and interact
with files, buffers, Git commits, and more, using dynamic and customizable search interfaces.

### [nvim-tmux-navigation](https://github.com/alexghergh/nvim-tmux-navigation)

Enables seamless navigation between Neovim splits and Tmux panes using a consistent set of keybindings.

### [nvim-tree-sitter](nvim-treesitter/nvim-treesitter)

Provides fast and accurate syntax highlighting, code navigation, and parsing in Neovim
by leveraging the Tree-sitter incremental parsing library.

### [nvim-tree-sitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)

Displays the code context (e.g., function or class header) at the top of
the editor when you scroll past it, using Tree-sitter for syntax awareness.

### [vim-sleuth](https://github.com/tpope/vim-sleuth)

Automatically detects and adjusts file indentation settings (like spaces or tabs, and their width)
based on the content of the file, ensuring consistent formatting.

### [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

Displays a popup of available keybindings and their descriptions as
you start typing a key combination, making shortcuts easier to discover and remember.

