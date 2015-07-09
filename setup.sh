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
if ! grep "rbenv/bin" ~/.bashrc; then
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
fi
source ~/.bashrc
if ! rbenv versions | grep -q 2.2.2; then
  CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline" rbenv install 2.2.2
  rbenv global 2.2.2
fi

# nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
source ~/.nvm/nvm.sh
nvm install stable
nvm alias default stable

# Fonts
mkdir ~/.fonts
cd /tmp
wget https://github.com/adobe-fonts/source-code-pro/archive/1.017R.tar.gz
tar -xzf 1.017R.tar.gz
mv source-code-pro-1.017R/TTF/SourceCodePro-Regular.ttf ~/.fonts/SourceCodePro-Regular.ttf
# I need to find a way to automatically set terminl font.

~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
sudo apt-get install python-dev

