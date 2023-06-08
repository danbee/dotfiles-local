return {
  "klen/nvim-test",

  config = function()
    require("nvim-test").setup({
      term = "toggleterm",
      termOpts = {
        direction = "horizontal",
        height = 24,
      },
    })
  end,
}
