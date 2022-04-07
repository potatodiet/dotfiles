if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval (/opt/homebrew/bin/brew shellenv)

# Used for Git's commit signing.
set -x GPG_TTY (tty)

