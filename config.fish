set EDITOR nvim

if status --is-interactive
  keychain --eval --quiet --quick --confhost | source
end

# Remove gretting message
set fish_greeting

set PATH ~/.cargo/bin $PATH
set PATH ~/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)
