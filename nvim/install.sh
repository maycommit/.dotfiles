curl -LO https://github.com/neovim/neovim/releases/download/v0.6.1/nvim-linux64.tar.gz
tar -xf nvim-linux64.tar.gz
sudo mv nvim-linux64/bin/nvim /usr/bin/nvim
sudo rm -r nvim-linux64.tar.gz
sudo rm -r nvim-linux64
