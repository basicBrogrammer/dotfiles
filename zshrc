source_if_exist() {
  local path="$1"; shift

  # shellcheck disable=SC2059
  [ -f $path ] && source $path
}

tmux_session() {
  if [ -z "$1" ]; then
    echo "Usage: tmux_session <session_name>"
    return 1
  fi

  local session_name="$1"

  # Check if the session already exists
  if tmux has-session -t "$session_name" 2>/dev/null; then
    # Attach to the existing session
    tmux attach-session -t "$session_name"
  else
    # Create a new session with the given name
    tmux new-session -s "$session_name"
  fi
}


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# af-magic, afowler, amuse, cloud, crunch, daveverwer, eastwood, gallois
ZSH_THEME="agnoster"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#tmux
plugins=(git macos z docker)

source $ZSH/oh-my-zsh.sh

set -k

source "$HOME/.zsh/exports.zsh"
source "$HOME/.zsh/aliases.zsh"
source_if_exist "$HOME/.profile"

# [[ -s "/Users/Jeremy_Ward/.gvm/scripts/gvm" ]] && source "/Users/Jeremy_Ward/.gvm/scripts/gvm"
# autojump change directories  quick
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# eval "$(direnv hook $0)"

# fzf via Homebrew
source "$HOME/.zsh/fzf-git.zsh"
if [ -e /usr/local/opt/fzf/shell/completion.zsh ]; then
  source /usr/local/opt/fzf/shell/key-bindings.zsh
  source /usr/local/opt/fzf/shell/completion.zsh
fi
source_if_exist $HOME/.fzf.zsh

source_if_exist $HOME/.bin/tmuxinator.zsh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)
if [ -e /Users/jeremyward/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jeremyward/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

# Shopify Hydrogen alias to local projects
alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'

if [[ $- =~ i ]] && [[ -z "$TMUX" ]] && [[ -n "$SPIN" ]]; then
  tmux attach-session -t spin || tmux new-session -s spin
fi

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi
# opencode
export PATH=/Users/basicbrogrammer/.opencode/bin:$PATH
