local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

opt.swapfile = false
opt.encoding = 'utf-8'
opt.guifont = 'DroidSansMono Nerd Font 11'
opt.number = true
opt.relativenumber = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smarttab = true
opt.autoindent = true
opt.termguicolors = true
opt.background = "dark" 
opt.listchars = {
    nbsp = '⦸', -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
    extends = '»', -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
    precedes = '«', -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
    tab = '▷─', -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
    trail = '•', -- BULLET (U+2022, UTF-8: E2 80 A2)
    space = ' '
}


cmd([[colorscheme gruvbox]])

-- auto source vim
cmd([[
  augroup neovim
		autocmd!
		autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
	augroup end
]])

cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500, on_visual=true}
  augroup end
]], false)
