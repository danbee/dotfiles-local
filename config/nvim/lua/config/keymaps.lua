local keymap = vim.keymap.set

-- Space as leader
vim.g.mapleader = " "

-- Better pane navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Neotree
keymap("n", "\\", ":Neotree toggle<CR>")
keymap("n", "<C-\\>", ":Neotree reveal<CR>")

-- Telescope
keymap("n", "<C-p>", ":Telescope find_files<CR>")
keymap("n", "<C-s>", ":Telescope live_grep<CR>")
keymap("n", "<C-b>", ":Telescope buffers<CR>")

-- Formatting
keymap("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer" })

-- TreeSJ
keymap("n", "gs", ":TSJSplit<CR>", { desc = "Split code block" })
keymap("n", "gj", ":TSJJoin<CR>", { desc = "Join code block" })
keymap("n", "gm", ":TSJToggle<CR>", { desc = "Split or join code block" })

-- LSP
require("config.keymaps.lsp")
require("config.keymaps.test")
