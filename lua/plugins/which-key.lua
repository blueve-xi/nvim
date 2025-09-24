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
  {"<leader>ee", desc = "toggle neotree"},
  {"<leader>lg", desc = "lazygit"},
  {"<leader>fs", desc = "FzfLua files"},
  {"<leader>fb", desc = "FzfLua buffer", icon = {icon = " "}}, 
  {"<leader>t", desc = "toggle themify", icon = {icon = "󰔎 ", color = "pink"}}, 
  {"<leader>T", desc = "toggle twilight"},
  {"<leader>ef", desc = "neotree focus"}, 
  {"<leader>q", desc = "quit", icon = {icon = "󰿅 ", color = "red"}}, 
  {"<leader>w", desc = "write", icon = {icon = " "}}, 
  {"<leader>o", desc = "update & source", icon = {icon = " ", color = "blue"}}

})
