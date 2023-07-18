local keymap = vim.keymap.set

keymap("n", "<Leader>t", ":TestFile<CR>")
keymap("n", "<Leader>s", ":TestNearest<CR>")
keymap("n", "<Leader>l", ":TestLast<CR>")
keymap("n", "<Leader>a", ":TestSuite<CR>")
keymap("n", "<Leader>gt", ":TestVisit<CR>")
