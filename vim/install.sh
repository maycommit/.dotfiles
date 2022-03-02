mkdir -p ~/.vim
mkdir -p ~/.config/


cp -R ~/mayconfig/vim/autoload ~/.vim/autoload

cat ~/mayconfig/vim/plugins_config.vim > ~/.mayconfig.vim
cat ~/mayconfig/vim/basic.vim >> ~/.mayconfig.vim
cat ~/mayconfig/vim/mayconfig.vim > ~/.vimrc

vim +PlugInstall +qall 
