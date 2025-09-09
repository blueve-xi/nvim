vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua.git" },
})

require('fzf-lua').setup {
  hls = { border = "FloatBorder" }
}
