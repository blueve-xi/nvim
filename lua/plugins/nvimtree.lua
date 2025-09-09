vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-tree.lua.git" },
	{ src = "https://github.com/nvim-lua/plenary.nvim.git" },
	{ src = "https://github.com/MunifTanjim/nui.nvim.git" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons.git" },
})

-- Neo-Tree Misc.
require("plenary")

-- Nvimtree setup
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  hijack_netrw = true,
  view = {
    adaptive_size = true,
    side = "right",
		},
})
