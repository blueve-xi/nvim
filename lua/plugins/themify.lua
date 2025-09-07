vim.pack.add({
		{ src = "https://github.com/LmanTW/themify.nvim.git" },
		{ src = "https://github.com/neko-night/nvim.git" },
	        { src = "https://github.com/folke/tokyonight.nvim.git" },
})

-- ~/.config/nvim/init.lua

require('themify').setup({
  -- Your list of colorschemes.
  'folke/tokyonight.nvim',
  'neko-night/nvim',
  activity = true,
})
