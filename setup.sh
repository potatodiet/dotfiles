# Install applications
sudo apt-get install vim git
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# The actual dotfiles
ln -s -f $(realpath .vimrc) $(realpath ~/.vimrc)

# Initialize any programs
vim +PluginInstall +qall

