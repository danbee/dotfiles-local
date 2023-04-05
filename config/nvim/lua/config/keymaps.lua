local keymap = vim.keymap.set

-- Space as leader
vim.g.mapleader = ' '

-- Better pane navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Neotree
keymap("n", "\\", ":Neotree toggle<CR>")
keymap("n", "<C-\\>", ":Neotree reveal<CR>")

-- Telescope
keymap("n", "<C-P>", ":Telescope find_files<CR>")
keymap("n", "<C-B>", ":Telescope buffers<CR>")
