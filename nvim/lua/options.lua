-- A TAB character looks like 4 spaces
vim.o.tabstop = 4

-- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.expandtab = true

-- Number of spaces inserted instead of a TAB character
vim.o.softtabstop = 4

-- Number of spaces inserted when indenting
vim.o.shiftwidth = 4

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Make relative line numbers default
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Make sure terminal supports this
vim.o.termguicolors = true

-- Show non-whitespace characters
vim.o.list = true
