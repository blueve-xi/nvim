--(plugins)
require('plugins.lspconfig')
require('plugins.nvimtree')
require('plugins.dashboard')
require('plugins.twilight')
require('plugins.treesitter')
require('plugins.checkmate')
require('plugins.themify')
require('plugins.mini')
require('plugins.neovim-sm')
require('plugins.lualine')
require('plugins.lazygit')
require('plugins.fuzzy')
require('plugins.autotag')
require('plugins.hardtime')
-- require configs
require('config.dashboard-nvim')
require('config.keymap')
require('config.options')

-- html
-- Basic capabilities for snippet support (Emmet expansions)
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Setup HTML LSP
require('lspconfig').html.setup {
  capabilities = capabilities,
  -- Optional: Disable built-in formatter if you prefer an external one (e.g., Prettier)
  provideFormatter = false,
}

-- Optional: Keymaps for LSP actions (attach on LSP start)
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local buf = args.buf
    local opts = { noremap = true, silent = true, buffer = buf }
    -- Hover for docs
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- Go to definition
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    -- Diagnostics
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  end,
})
