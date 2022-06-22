local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

map('n', '<leader>c', ':nohl<CR>')

map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

map('n', '<leader>w', ':w<CR>')
map('i', '<leader>w', '<C-c>:w<CR>')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<leader>q', ':q<CR>')
map('n', '<leader>Q', ':q!<CR>')

map('n', '<C-t>', ':Term<CR>', { noremap = true })
map('t', '<Esc>', '<C-\\><C-n>')

map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<leader>nn', ':NvimTreeFocus<CR>')
map('n', '<leader>r', ':NvimTreeRefresh<CR>')
map('n', '<leader>n', ':NvimTreeFindFile<CR>')

map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')

map('n', '<leader>G', ':tab Git<CR>')
map('n', '<leader>go', ':GBrowse<CR>')
map('n', '<leader>gb', ':Git blame<CR>')
map('n', '<leader>gw', ':Gwrite<CR>')
map('n', '<leader>gd', ':Gdiffsplit<CR>')
map('n', '<leader>gv', ':tab GV!<CR>')

map('n', '<leader>xx', '<cmd>Trouble<cr>')
map('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>')
