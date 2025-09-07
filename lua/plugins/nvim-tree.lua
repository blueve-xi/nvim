vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
})

-- config
require('telescope').setup({
  defaults = {
    -- Use the 'center' layout_strategy for fine-grained control
    layout_strategy = 'center',
    layout_config = {
      center = {
        -- Set anchor to 'NW' for North-West (top-left)
        anchor = 'NW',
        -- Adjust dimensions to occupy part of the screen
        width = 0.9, -- 50% of screen width
        height = 0.9, -- 90% of screen height
        -- Prevent the floating window from centering itself
        prompt_position = 'top',
        preview_height = 0.6,
      },
    },
  },
})

