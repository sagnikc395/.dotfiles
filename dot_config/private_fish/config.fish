if status is-interactive
    # Commands to run in interactive sessions can go here
end

# --- Environment Variables ---
# Fish uses 'set -gx' for exporting global variables
set -gx PNPM_HOME /Users/sagnik/Library/pnpm
set -gx PYENV_ROOT "$HOME/.pyenv"

# --- Path Configuration ---
# Fish manages paths as a list; 'fish_add_path' is the cleanest way
# it automatically avoids duplicates and handles prepending/appending
fish_add_path $HOME/bin
fish_add_path $HOME/.local/bin
fish_add_path /usr/local/bin
fish_add_path $PNPM_HOME
fish_add_path $PYENV_ROOT/bin

# --- Aliases ---
alias cat='bat'

# --- Tool Initializations ---

# fnm (Node manager)
if test -d /opt/homebrew/opt/fnm/bin
    fnm env --use-on-cd | source
end

# pyenv
if command -v pyenv >/dev/null
    status is-interactive; and pyenv init - fish | source
end

# Apple Keychain for SSH
# We use '2>/dev/null' to keep login quiet
ssh-add --apple-use-keychain 2>/dev/null

# Load external environment file if it exists
if test -f "$HOME/.local/bin/env"
    # Note: Fish cannot directly source bash/zsh scripts. 
    # If 'env' contains standard exports, you might need 'bass' (see below).
end
