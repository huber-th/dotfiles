--- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Load lazy package manager
require("config.lazy")

-- Load keymaps and options
require("keymaps")
require("options")
