vim.pack.add({
  { src = "https://github.com/folke/which-key.nvim.git" },
})

require("which-key").setup {
  preset = "helix",
  layout = {
    height = { min = 4, max = 50 }, -- Adjust for taller popup
  },
}
local wk = require("which-key")
wk.add({
  {"<leader>ee", desc = "toggle neotree"}
})
