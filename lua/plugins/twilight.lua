vim.pack.add({
		{ src = "https://github.com/folke/twilight.nvim.git"}
})

-- Twilight setup
require("twilight").setup({
  -- Custom configuration can go here.
  -- For example, to adjust dimming
  dimming = {
    alpha = 0.25, -- amount of dimming
  },
  context = 1,
})

