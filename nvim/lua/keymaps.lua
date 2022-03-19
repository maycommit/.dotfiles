local map = require("utils").map

vim.g.mapleader = " "

map("n", "<Leader>e", "<cmd>NvimTreeToggle<cr>")
map("n", "<Leader>h", ":<C-u>split<CR>")
map("n", "<Leader>p", "<cmd>Telescope find_files<cr>")
