#!/bin/bash

./git.sh
./vim.sh
./zsh.sh
./rbenv.sh
./nvm.sh
./cpp.sh

if [ ! -f ~/.bundle/config ]; then
  # ~/.bundle probably won't exist
  mkdir -p ~/.bundle

  ln -sfn $(readlink -f .bundle/config) $(readlink -f ~/.bundle/config)
fi

