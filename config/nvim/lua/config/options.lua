require("onedark").load()

local indent = 2

vim.opt.updatetime = 100

-- Local project config
vim.opt.exrc = true

-- Tabstops
vim.opt.expandtab = true
vim.opt.shiftwidth = indent
vim.opt.smartindent = true
vim.opt.tabstop = indent

-- Line numbers
vim.opt.number = true

-- Line width
local colorcolumns = {}
for i = 1, 40 do
	table.insert(colorcolumns, string.format("+%i", i))
end

vim.opt.textwidth = 80
vim.opt.colorcolumn = table.concat(colorcolumns, ",")

-- Open new split panes to the right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Neovide
if vim.g.neovide then
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_background_color = "#20252c"
end
