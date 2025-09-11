--System keymaps
vim.g.my_plugin_setting = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0

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
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>')

--Fzf keymaps
vim.keymap.set('n', '<leader>fs', ':FzfLua files<CR>')
vim.keymap.set('n', '<leader>fb', ':FzfLua buffers<CR>')

--Misc. 
vim.keymap.set('n', '<leader>t', ':Themify<CR>')
vim.keymap.set('n', '<leader>T', ':Twilight<CR>')
