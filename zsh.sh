sudo apt-get install zsh -y
chsh -s /bin/zsh

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions

touch ~/.zshrc
ln -s -f $(realpath .zshrc) $(realpath ~/.zshrc)
source ~/.zshrc
