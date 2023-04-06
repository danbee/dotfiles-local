return function()
  require("formatter").setup({
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
      lua = {
        require("formatter.filetypes.lua").stylua,
      },

      ["*"] = {
        require("formatter.filetypes.any").remove_trailing_whitespace,
      },
    },
  })
end
