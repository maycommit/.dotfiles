mkdir -p ~/.vim

cp -R ~/.config/vim/autoload ~/.vim/autoload

cat ~/.config/vim/plugins_config.vim > ~/.config/vim/mayconfig.vim
cat ~/.config/vim/basic.vim >> ~/.config/vim/mayconfig.vim
cat ~/.config/vim/mayconfig.vim > ~/.vimrc

vim +PlugInstall +qall 
