quiet_install zsh
chsh -s /bin/zsh

if [ ! -d ~/.zsh/zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
fi

if [ ! -f ~/.zshrc ]; then
  ln -sfn $(readlink -f .zshrc) $(readlink -f ~/.zshrc)
fi
