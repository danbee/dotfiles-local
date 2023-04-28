require("onedark").load()

local indent = 2

vim.opt.updatetime = 100

-- Tabstops
vim.opt.expandtab = true
vim.opt.shiftwidth = indent
vim.opt.smartindent = true
vim.opt.tabstop = indent

-- Line numbers
vim.opt.number = true

-- Line width
vim.opt.textwidth = 120
vim.opt.colorcolumn = "+1"

-- Open new split panes to the right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true
