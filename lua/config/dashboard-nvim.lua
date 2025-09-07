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
        icon = ' ',
        desc = 'Toggle File Explorer',
        key = 'e',
        action = 'Neotree toggle',
      },
      {
        icon = ' ',
        desc = 'Open Dotfiles      ',
        key = 'd',
        action = 'edit ~/.config/nvim/init.lua',
      },
      {
        icon = ' ',
        desc = 'Open Last Session  ',
        key = 'l',
        action = 'SessionManager load_last_session',
      },
    },
    footer = { '🚀 Neovim with Doom Theme' },
    vertical_center = true,
  },
})
