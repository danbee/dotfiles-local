return function()
  local null_ls = require("null-ls")

  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.crystal_format,
      null_ls.builtins.formatting.eslint,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.formatting.standardrb,
      null_ls.builtins.formatting.stylua,
    },
  })

  -- Format on save
  vim.api.nvim_create_autocmd("BufWritePre", {
    command = "lua vim.lsp.buf.format()",
  })
end
