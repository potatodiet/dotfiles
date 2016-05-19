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

