vim.pack.add({
		{ src = "https://github.com/nvim-treesitter/nvim-treesitter.git"},
})

--Neo-Treesitter setup
require('nvim-treesitter.configs').setup {
  build = ":TSUpdate",
  ensure_installed = { "lua", "vim", "html", "python", "java", "javascript", "typescript", "c_sharp", "bash",
   "haskell", "ruby", "swift" },
  
  -- Automatically install missing parsers when you open a file of that type.
  auto_install = true,
  
  -- Enable syntax highlighting based on treesitter.
  highlight = {
    enable = true,
    -- You can add languages to disable treesitter highlighting for here.
    disable = { },
    -- Alternatively, you can enable additional regex-based highlighting.
    -- This may be useful if a language is not fully supported by treesitter.
    additional_vim_regex_highlighting = false,
  },
  
  -- Enable indentation based on treesitter.
  indent = {
    enable = true,
  },
}

