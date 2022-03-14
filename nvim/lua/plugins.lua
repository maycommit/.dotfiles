vim.cmd [[packadd packer.nvim]]
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

	use {
    "neovim/nvim-lspconfig",
    config = [[ require('plugins/lspconfig') ]]
  }

	use {
  	"kyazdani42/nvim-tree.lua",
  	requires = "kyazdani42/nvim-web-devicons",
  	config = [[ require('plugins/nvim-tree') ]]
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
