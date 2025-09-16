vim.pack.add({
		{ src = "https://github.com/nvim-mini/mini.pairs.git" },
		{ src = "https://github.com/nvim-mini/mini-git.git" },
		{ src = "https://github.com/nvim-mini/mini.icons.git" },
    { src = "https://github.com/nvim-mini/mini.notify.git" },
    { src = "https://github.com/nvim-mini/mini.comment.git" },
})


-- require add-ons
require "mini.pairs".setup()
require "mini.git".setup()
require "mini.icons".setup()
require "mini.comment".setup()
require('mini.notify').setup({
  window = {
    config = function()
      local cmdheight = vim.opt.cmdheight:get()
      return {
        anchor = 'SW',
        row = vim.o.lines,
        border = 'rounded',
        col = 0,
      }
    end,
  },
})
