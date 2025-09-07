--System keymaps
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')

--Plugin Keymaps
vim.keymap.set('n', '<leader>nt', ':Neotree toggle<CR>')
vim.keymap.set('n', '<C-f>', ':Neotree focus<CR>')
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<CR>')
vim.keymap.set('n', '<leader>tt', ':Themify<CR>')
vim.keymap.set('n', '<C-t>', ':Twilight<CR>')
vim.keymap.set('n', '<leader>nd', require("notify").dismiss)
