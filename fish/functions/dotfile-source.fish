function dotfile-source
  mkdir -p ~/.config/nvim
  cp -R ~/.dotfiles/nvim/* ~/.config/nvim/
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

  cat ~/.dotfiles/tmux/basic.conf > ~/.tmux.conf
end
