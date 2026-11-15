# Login shells only: path_helper moves /usr/bin forward, so re-prepend Homebrew.
path=("${HOMEBREW_PREFIX:-/opt/homebrew}/bin" "${HOMEBREW_PREFIX:-/opt/homebrew}/sbin" $path)
