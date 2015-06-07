# Install applications
sudo apt-get install vim git libssl-dev libreadline-dev
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# The actual dotfiles
ln -s -f $(realpath .vimrc) $(realpath ~/.vimrc)

# Initialize any programs
vim +PluginInstall +qall

# rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
if ! rbenv versions | grep -q 2.2.2; then
  CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline" rbenv install 2.2.2
  rbenv global 2.2.2
fi

