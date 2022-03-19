vim.cmd [[packadd packer.nvim]]
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

	use 'morhetz/gruvbox'
	use {
  	'nvim-telescope/telescope.nvim',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'windwp/nvim-autopairs'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'
	use 'ray-x/lsp_signature.nvim'
	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
	use 'onsails/lspkind-nvim'
	use 'williamboman/nvim-lsp-installer'

	use {
		"kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
  	config = [[ require('settings/nvim-tree') ]]
  }

	use {
		"nvim-treesitter/nvim-treesitter",
  	run = ":TSUpdate",
   	requires = {
      "windwp/nvim-ts-autotag",
    	"p00f/nvim-ts-rainbow",
    },
		config = [[ require('settings/treesitter') ]]
  }

	use {
    "lukas-reineke/indent-blankline.nvim",
    config = [[ require('settings/blankline') ]]
	}


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)