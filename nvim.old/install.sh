curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install packer
curl -LO https://github.com/neovim/neovim/releases/download/v0.6.1/nvim-linux64.tar.gz
tar -xf nvim-linux64.tar.gz
sudo mv nvim-linux64/bin/nvim /usr/bin/nvim
sudo rm -r nvim-linux64.tar.gz
sudo rm -r nvim-linux64
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
