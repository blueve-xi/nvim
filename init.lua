-- system setup and keymaps
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.swapfile = false
vim.g.mapleader = " "

-- (plugins)
require('plugins.nvim')
require('plugins.neo-tree')
require('plugins.dashboard')
require('plugins.twilight')
require('plugins.treesitter')
require('plugins.checkmate')
require('plugins.themery')
require('plugins.mini')
require('plugins.nvim-tree')
require('plugins.neovim-sm')
require('plugins.lualine')
require('plugins.lazygit')
require('plugins.notify')
-- require configs
require('config.autocmd')
require('config.keybinds')

