vim.pack.add({
		{ src = "https://github.com/nvim-mini/mini.pairs.git" },
		{ src = "https://github.com/nvim-mini/mini-git.git" },
		{ src = "https://github.com/nvim-mini/mini.icons.git" },
		{ src = "https://github.com/nvim-mini/mini.indentscope.git" },
        { src = "https://github.com/nvim-mini/mini.comment.git" },
})


-- require add-ons
require "mini.pairs".setup()
require "mini.git".setup()
require "mini.icons".setup()
require "mini.indentscope".setup()
require "mini.comment".setup()
