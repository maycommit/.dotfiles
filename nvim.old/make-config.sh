mkdir -p ~/.config/nvim
cp -R init.lua lua ~/.config/nvim

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

