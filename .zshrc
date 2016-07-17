autoload -Uz promptinit
promptinit
prompt suse

# Autocompletion
autoload -Uz compinit
compinit

# Needed for tabs to open in same directory.
source /etc/profile.d/vte.sh

# Keep 10,000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'

alias ls="ls --color='auto'"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/install-nvm-exec

export PATH="$HOME/Workspace/scripts:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"
