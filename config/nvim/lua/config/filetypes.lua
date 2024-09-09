vim.filetype.add({
  extension = {
    pom = "ruby",
  },
  filename = {
    ["Jenkinsfile"] = "groovy",
  },
  complex = {
    ["*.zsh.local"] = "zsh",
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "eruby.yaml",
  command = "set filetype=yaml",
})
