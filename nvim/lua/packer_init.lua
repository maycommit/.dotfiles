local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'kyazdani42/nvim-tree.lua'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'nvim-treesitter/nvim-treesitter'

  use 'navarasu/onedark.nvim'

  use 'neovim/nvim-lspconfig'

  use 'williamboman/nvim-lsp-installer'

  use 'famiu/feline.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
