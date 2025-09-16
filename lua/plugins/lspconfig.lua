vim.pack.add({
		{ src = "https://github.com/neovim/nvim-lspconfig.git" },
		{ src = "https://github.com/mason-org/mason.nvim.git" },
    { src = 'https://github.com/hrsh7th/cmp-nvim-lsp' },
    { src = 'https://github.com/hrsh7th/cmp-buffer' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim.git' },
    { src = 'https://github.com/hrsh7th/cmp-path' },
    { src = 'https://github.com/hrsh7th/cmp-cmdline' },
    { src = 'https://github.com/hrsh7th/cmp-vsnip' },
    { src = 'https://github.com/hrsh7th/vim-vsnip' },
    { src = "https://github.com/hrsh7th/nvim-cmp.git" },
})
require('mason').setup()
require('mason-lspconfig').setup({
})

local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)  -- For vim-vsnip; adjust for other engines
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },  -- For vim-vsnip
  }, {
    { name = 'buffer' },
  })
})

-- LSP capabilities integration
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Use `capabilities` when setting up your LSP servers (e.g., via nvim-lspconfig)
