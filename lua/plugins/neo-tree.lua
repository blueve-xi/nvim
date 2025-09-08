vim.pack.add({
	{ src = "https://github.com/nvim-neo-tree/neo-tree.nvim.git" },
	{ src = "https://github.com/nvim-lua/plenary.nvim.git" },
	{ src = "https://github.com/MunifTanjim/nui.nvim.git" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons.git" },
})

-- Neo-Tree Misc.
require("plenary")

-- Neo-Tree setup
require("neo-tree").setup({
  sources = {
    "filesystem",
    "buffers",
  },
  window = {
    position = "right",
    width = 30,
  },
  filesystem = {
    bind_to_cwd = false,
    follow_current_file = {
		enabled = true,
    filtered_items = {
		hide_dotfiles = false,
		hide_by_name = {},
		never_show = {},
				},
		},
	},
})
