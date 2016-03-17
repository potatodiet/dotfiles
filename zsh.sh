sudo apt-get install zsh -y
chsh -s /bin/zsh

touch ~/.zshrc
ln -s -f $(realpath .zshrc) $(realpath ~/.zshrc)

source ~/.zshrc
