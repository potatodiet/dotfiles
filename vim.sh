quiet_install vim cmake clang clang-tools-extra

if [ ! -f ~/.vimrc ]; then
  ln -sfn $(readlink -f .vimrc) $(readlink -f ~/.vimrc)
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Install bundler plugins
vim +PluginInstall +qall

~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
