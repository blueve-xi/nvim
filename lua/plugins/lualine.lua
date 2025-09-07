vim.pack.add({
		{ src = "https://github.com/nvim-lualine/lualine.nvim.git" },
})

-- Call the setup function for nvim-web-devicons (optional)
require('nvim-web-devicons').setup()

-- Call the setup function for lualine.nvim
require('lualine').setup({
  options = {
    icons_enabled = true, -- Enable icons if devicons is installed
    -- Other lualine options can be configured here
  },
  -- Custom sections or themes can be added here
})

require('lualine').setup({
  options = {
    theme = 'auto', -- Use the colorscheme of your editor
    icons_enabled = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
})
