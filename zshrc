# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# af-magic, afowler, amuse, cloud, crunch, daveverwer, eastwood, gallois
ZSH_THEME=""


# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

source "$HOME/.zsh/exports.zsh"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#tmux
plugins=(git macos z docker asdf)

set -k

source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
prompt pure

source "$HOME/.zsh/aliases.zsh"
source "$HOME/.zsh/fzf-git.zsh"
# add non-public info here to the ~/.profile file
source "$HOME/.profile"


# [[ -s "/Users/Jeremy_Ward/.gvm/scripts/gvm" ]] && source "/Users/Jeremy_Ward/.gvm/scripts/gvm"
# autojump change directories  quick
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# eval "$(direnv hook $0)"

# fzf via Homebrew
if [ -e /usr/local/opt/fzf/shell/completion.zsh ]; then
  source /usr/local/opt/fzf/shell/key-bindings.zsh
  source /usr/local/opt/fzf/shell/completion.zsh
fi
source ~/.bin/tmuxinator.zsh
# fzf via local installation
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }

[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)
