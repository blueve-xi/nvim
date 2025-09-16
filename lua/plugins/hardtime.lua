vim.pack.add({
  { src ='https://github.com/m4xshen/hardtime.nvim.git' },
})

require('hardtime').setup({
  opts = {
    max_time = 7000;
    max_count = 7;
  },
})
