#!/bin/bash

function quiet_install {
  sudo zypper --non-interactive --quiet install "$@"
}

source ./git.sh
source ./vim.sh
source ./zsh.sh
source ./rbenv.sh
source ./nvm.sh
source ./cpp.sh
source ./fonts.sh

