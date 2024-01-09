return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.crystal_format,
        null_ls.builtins.formatting.prettierd.with({
          filetypes = {
            "css",
            "graphql",
            "handlebars",
            "javascript",
            "javascriptreact",
            "json",
            "jsonc",
            "less",
            "markdown",
            "markdown.mdx",
            "ruby",
            "scss",
            "typescript",
            "typescriptreact",
            "vue",
            "yaml",
          },
          timeout = 5000,
        }),
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.standardrb,
        null_ls.builtins.formatting.stylua,
      },
    })

    -- Format on save
    -- vim.api.nvim_create_autocmd("BufWritePre", {
    --   command = "lua vim.lsp.buf.format()",
    -- })
  end,
}
