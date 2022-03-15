local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

g.mapleader = ','

opt.number = true
opt.relativenumber = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smarttab = true
opt.autoindent = true


-- auto source vim
cmd([[
  augroup neovim
		autocmd!
		autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
	augroup end
]])

