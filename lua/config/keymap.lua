--System keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

--Modes
vim.keymap.set('x', '<C-i>', '<ESC>I') -- swap from visual into instert mode
vim.keymap.set('i', '<C-v>', '<ESC>V') -- swap from visual into instert mode

--Plugin Keymaps
-- NvimTree
vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>')

--Lazygit
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<CR>')

--Mini


--Misc. 
-- vim.keymap.set('n', '<leader>t', ':Themify<CR>')
vim.keymap.set('n', '<C-t>', ':Twilight<CR>')
vim.keymap.set('n', '<leader>nd', require("notify").dismiss)
