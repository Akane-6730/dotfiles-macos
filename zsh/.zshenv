# Loaded by every zsh (interactive, login, scripts).

# --- Homebrew ---
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1

# --- OrbStack ---
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# --- Locale / Editor ---
export LANG=en_US.UTF-8
export EDITOR="emacs -Q -nw -l ~/.emacs.d/init-mini.el"

# --- PATH ---
export PATH="$HOME/.local/bin:$PATH"
typeset -U path  # remove duplicates
