vim.pack.add({
		{ src = "https://github.com/rcarriga/nvim-notify.git" },
})

require("notify").setup({
  stages = "fade_in_slide_out", -- Optional: Animation style
  timeout = 2000, -- Duration notifications stay visible (in milliseconds)
  window = {
    config = function()
      local has_statusline = vim.o.laststatus > 0
      local bottom_space = vim.o.cmdheight + (has_statusline and 1 or 0)
      return {
        anchor = "NE", -- Northeast corner (top-right)
        col = vim.o.columns, -- Align to the right edge
        row = 1, -- Small offset from the top
      }
    end,
  },
})

vim.opt.termguicolors = true


