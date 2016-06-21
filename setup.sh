#!/bin/bash

function quiet_install {
  sudo pacman --noconfirm --needed -S "$@"
}

# Used for the AUR build script
quiet_install base-devel
export BUILDDIR=~/aur
mkdir -p $BUILDDIR

source ./git.sh
source ./vim.sh
source ./zsh.sh
source ./rbenv.sh
source ./nvm.sh
source ./cpp.sh

if [ ! -f ~/.bundle/config ]; then
  # ~/.bundle probably won't exist
  mkdir -p ~/.bundle

  ln -sfn $(readlink -f .bundle/config) $(readlink -f ~/.bundle/config)
fi

