curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

#source ~/.zshrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" #

nvm install stable
nvm alias default stable
