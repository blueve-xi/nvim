vim.pack.add({
		{ src = "https://github.com/rcarriga/nvim-notify.git" },
})

require("notify").setup({
		timeout = 5000,
})

 vim.notify = require("notify")
vim.opt.termguicolors = true


