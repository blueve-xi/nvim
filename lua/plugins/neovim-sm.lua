vim.pack.add({
  {
    src = "https://github.com/Shatur/neovim-session-manager",
  },
})

-- Session Manager configuration
require('session_manager').setup {
  sessions_dir = vim.fn.expand('~/.config/nvim/sessions/'),
  autoload_mode = require('session_manager.config').AutoloadMode.Disabled, -- Manual session loading
  autosave_last_session = true,
  autosave_only_in_session = false,
  autosave_ignore_dirs = { '~/', '~/Downloads', '/' },
}

vim.api.nvim_set_keymap('n', '<leader>d', ':Telescope find_files cwd=~/.config/nvim<CR>', { noremap = true, silent = true })
-- Auto-save session on exit
vim.api.nvim_create_autocmd('VimLeavePre', {
  callback = function()
    vim.cmd('SessionManager save_current_session')
  end,
})
