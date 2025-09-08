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
-- NeoTree
vim.keymap.set('n', '<leader>ee', ':Neotree toggle<CR>')
vim.keymap.set('n', '<C-f>', ':Neotree focus<CR>')
--vim.keymap.set('n', '<C-]>', ':Neotree filesystem<CR>')
--vim.keymap.set('n', '<C-[>', ':Neotree buffers<CR>')
--vim.keymap.set('n', '\\' , ':bn<CR>')

--Lazygit
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<CR>')

--Telescope keymap
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>')

--Misc. 
-- vim.keymap.set('n', '<leader>t', ':Themify<CR>')
vim.keymap.set('n', '<C-t>', ':Twilight<CR>')
vim.keymap.set('n', '<leader>nd', require("notify").dismiss)
