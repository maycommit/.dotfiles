local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use {
    'ggandor/lightspeed.nvim',
    requires = {
      'tpope/vim-repeat'
    }
  }

  use 'kyazdani42/nvim-tree.lua'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'nvim-treesitter/nvim-treesitter'

  use 'RRethy/nvim-treesitter-textsubjects'

  use 'navarasu/onedark.nvim'

  use 'neovim/nvim-lspconfig'

  use 'jose-elias-alvarez/typescript.nvim'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  use 'williamboman/nvim-lsp-installer'

  use "jose-elias-alvarez/nvim-lsp-ts-utils"

  use 'famiu/feline.nvim'

  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    "tpope/vim-fugitive",
    requires = { "tpope/vim-rhubarb", "junegunn/gv.vim" },
  })

  if packer_bootstrap then
    require('packer').sync()
  end
end)
