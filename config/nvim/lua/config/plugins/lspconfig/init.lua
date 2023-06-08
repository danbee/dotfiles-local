return {
  "neovim/nvim-lspconfig",

  config = function()
    require("config.plugins.lspconfig.elixir")
    require("config.plugins.lspconfig.emmet")
    require("config.plugins.lspconfig.javascript")
    require("config.plugins.lspconfig.lua")
    require("config.plugins.lspconfig.ruby")
    require("config.plugins.lspconfig.rust")
  end,
}
