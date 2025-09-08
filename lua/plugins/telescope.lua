vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim.git" },
	{ src = "https://github.com/nvim-telescope/telescope-file-browser.nvim.git" },
})

-- config
require('telescope').setup {
  defaults = {
    layout_strategy = 'vertical', -- Or 'flex' or 'horizontal'
    layout_config = {
      vertical = {
        -- Adjust padding to make the overall panel smaller
        width_padding = 30.05, -- Decrease padding for a smaller panel
        height_padding = 20,   -- Adjust as needed
        preview_height = 0.5, -- Adjust the height of the preview pane
      },
      horizontal = {
        -- Adjust padding to make the overall panel smaller
        width_padding = 0.1, -- Decrease padding for a smaller panel
        height_padding = 20.1, -- Adjust as needed
        preview_width = 0.6,  -- Adjust the width of the preview pane
      },
    },
    -- Other default options can go here
  },
  -- Other configurations...
}
