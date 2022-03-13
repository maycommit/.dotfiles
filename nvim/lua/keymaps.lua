local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }


set("n", "<Leader>e", "<cmd>NvimTreeToggle<cr>", ns)
set("n", "<Leader>h", ":<C-u>split<CR>", ns)
