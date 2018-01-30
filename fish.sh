sudo pacman -Syu --noconfirm fish
sudo chsh -s /usr/bin/fish justin

if [ ! -f ~/.config/fish/config.fish ]; then
  mkdir -p ~/.config/fish
  ln -sfn $(readlink -f config.fish) $(readlink -f ~/.config/fish/config.fish)
fi
