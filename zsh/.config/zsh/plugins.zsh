# --- fzf: official shell integration (key bindings + fuzzy completion) ---
if (( $+commands[fzf] )); then
    source <(fzf --zsh)
    export FZF_DEFAULT_OPTS_FILE="$HOME/.config/fzf/fzfrc"

    # fd instead of the built-in walker: honors .gitignore and ~/.config/fd/ignore
    export FZF_DEFAULT_COMMAND='fd --type f --type d --hidden --follow --exclude .git'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

    # Same for fuzzy completion (official hooks)
    _fzf_compgen_path() {
        fd --hidden --follow --exclude .git . "$1"
    }
    _fzf_compgen_dir() {
        fd --type d --hidden --follow --exclude .git . "$1"
    }

    # CTRL-T: file preview (official example), preview window 60% wide
    export FZF_CTRL_T_OPTS="
        --preview 'bat -n --color=always {}'
        --preview-window right:60%"

    # ALT-C: directory tree preview (official example), preview window 60% wide
    export FZF_ALT_C_OPTS="
        --preview 'tree -C {}'
        --preview-window right:60%"
fi

# --- zsh plugins (syntax highlighting must stay last) ---
[[ -f "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] &&
    source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

[[ -f "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] &&
    source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
