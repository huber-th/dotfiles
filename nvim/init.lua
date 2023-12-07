-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install `lazy.vim` plugin manager
require 'lazy-bootstrap'

-- Install `lazy.plugins`
require 'lazy-plugins'

-- Load options
require 'options'

-- Load keymaps
require 'keymaps'

-- Load telescope setup
require 'telescope-setup'

-- Load treesitter setup
require 'treesitter-setup'

-- Load LSP setup
require 'lsp-setup'

-- Load nvim-cmp
require 'cmp-setup'

-- vim: ts=2 sts=2 sw=2 et
