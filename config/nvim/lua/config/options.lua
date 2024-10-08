require("onedark").setup({
  style = "darker",
  transparent = not vim.g.neovide,
})

require("onedark").load()

local indent = 2

vim.opt.updatetime = 100

-- Local project config
vim.opt.exrc = true

-- Tabstops
vim.opt.expandtab = true
vim.opt.shiftwidth = indent
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = indent

-- Line numbers
vim.opt.number = true

-- Line width
local colorcolumns = {}

if vim.g.neovide then
  for i = 1, 40 do
    table.insert(colorcolumns, string.format("+%i", i))
  end
end

vim.opt.textwidth = 80
vim.opt.colorcolumn = table.concat(colorcolumns, ",")

-- Highlight trailing whitespace
vim.opt.listchars = "tab:▸·,trail:·,nbsp:·"
vim.opt.list = true

-- Open new split panes to the right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Add a space after comment characters
vim.g.NERDSpaceDelims = 1

-- Tests
vim.g["test#strategy"] = "toggleterm"

-- GUI Font
vim.o.guifont = "BerkeleyMono Nerd Font:h14"

-- Neovide
if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0
end
