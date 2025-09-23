--- Lua
vim.o.autowriteall = true
vim.api.nvim_create_autocmd({ 'InsertLeavePre', 'TextChanged', 'TextChangedP' }, {
    pattern = '*', callback = function()
        vim.cmd('silent! write')
    end
})

vim.api.nvim_create_autocmd("BufReadPre", {
  pattern = "*.py",
  callback = function()
    -- Check if the 'python' parser is installed
    local parsers = require("nvim-treesitter.parsers").get_parser_info("python")
    if not parsers or not parsers.installed then
      vim.cmd("TSInstall python")
    end
  end,
})
