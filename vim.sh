quiet_install vim python-devel cmake gcc-c++

if [ ! -f ~/.vimrc ]; then
  ln -s -f .vimrc ~/.vimrc
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Install bundler plugins
vim +PluginInstall +qall

~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
