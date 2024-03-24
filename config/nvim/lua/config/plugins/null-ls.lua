return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.crystal_format,
        null_ls.builtins.formatting.stylelint,
        require("none-ls.formatting.standardrb"),
        require("none-ls.formatting.rustfmt"),
        null_ls.builtins.formatting.stylua,
      },
    })

    -- Format on save
    -- vim.api.nvim_create_autocmd("BufWritePre", {
    --   command = "lua vim.lsp.buf.format()",
    -- })
  end,
}
