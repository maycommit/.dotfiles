local cmd = vim.cmd
cmd [[packadd packer.vim]]

local packer = require('packer')

return packer.startup(function()
  use 'wbthomason/packer.nvim'

  use 'kyazdani42/nvim-tree.lua'

  use 'kyazdani42/nvim-web-devicons'

  use 'nvim-treesitter/nvim-treesitter'

  use 'neovim/nvim-lspconfig'
end)
