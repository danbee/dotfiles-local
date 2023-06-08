return {
  "Wansmer/treesj",

  dependencies = { "nvim-treesitter/nvim-treesitter" },

  keys = { "gm", "gj", "gs" },

  config = function()
    require("treesj").setup()
  end,
}
