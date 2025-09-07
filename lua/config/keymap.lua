--System keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

--Plugin Keymaps
vim.keymap.set('n', '<leader>ee', ':Neotree toggle<CR>')
vim.keymap.set('n', '<C-f>', ':Neotree focus<CR>')
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<CR>')
vim.keymap.set('n', '<leader>t', ':Themify<CR>')
vim.keymap.set('n', '<C-t>', ':Twilight<CR>')
vim.keymap.set('n', '<leader>nd', require("notify").dismiss)
