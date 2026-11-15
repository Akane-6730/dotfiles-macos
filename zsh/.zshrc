ZSH_CONFIG_DIR="$HOME/.config/zsh"

source "$ZSH_CONFIG_DIR/completion.zsh"
source "$ZSH_CONFIG_DIR/aliases.zsh"
source "$ZSH_CONFIG_DIR/history.zsh"
# Proxy Management
source "$ZSH_CONFIG_DIR/functions.zsh"
# FZF, Autosuggestions, Syntax Highlighting
source "$ZSH_CONFIG_DIR/plugins.zsh"

# Command line word behavior
autoload -U select-word-style
select-word-style bash

# --- Starship Prompt ---
eval "$(starship init zsh)"
