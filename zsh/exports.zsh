export EDITOR="nvim"
export LESS="-R -X -F"


export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export RCRC=$HOME/dotfiles/rcrc

# postgresApp
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin/:$PATH"
#export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH="$(yarn global bin):$PATH"
export PATH"$HOME/.local/bin"
#export PATH=/usr/local/anaconda3/bin:"$PATH"

# fzf + ag configuration
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
# JellyX
export FZF_DEFAULT_OPTS='
--color fg:-1,bg:-1,hl:230,fg+:3,bg+:233,hl+:229
--color info:150,prompt:110,spinner:150,pointer:167,marker:174
'

# export CONDA_NEOVIM='/Users/basicbrogrammer/anaconda3/bin/python'

export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"
# Flutter Dev
export PATH="$PATH:/Users/basicbrogrammer/flutter/bin"
export BUILDKITE_TOKEN="$(cat /etc/spin/secrets/buildkite)"

# rails 
export DISABLE_SPRING=true
