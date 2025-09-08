local db = require('dashboard')
local logo = [[
  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

db.setup({
  theme = 'doom',
  config = {
    header = vim.split(logo, '\n'),
    center = {
      {
        icon = ' ',
        desc = 'New File           ',
        key = 'n',
        action = 'enew',
      },
      {
        icon = '󱀸 ',
        desc = 'Open Last Session',
        key = 'l',
        action = 'SessionManager load_last_session',
      },
      {
        icon = ' ',
        desc = 'Open Dotfiles      ',
        key = 'd',
        action = 'edit ~/.config/nvim/init.lua',
      },
      {
        icon = '󰚰 ',
        desc = 'Update Packages  ',
        key = 'u',
        action = 'lua vim.pack.update()',
      },
    },
    footer = { '🚀 Neovim with Doom Theme' },
    vertical_center = true,
  },
})
