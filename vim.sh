sudo apt-get install vim realpath python-dev build-essential cmake -y

touch ~/.vimrc
ln -s -f $(realpath .vimrc) $(realpath ~/.vimrc)

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install bundler plugins
vim +PluginInstall +qall

~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
