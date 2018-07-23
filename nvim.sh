sudo pacman -Syu --noconfirm neovim python-neovim

if [ ! -f ~/.config/nvim/init.vim ]; then
  mkdir -p ~/.config/nvim
  ln -sfn $(readlink -f init.vim) $(readlink -f ~/.config/nvim/init.vim)
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
