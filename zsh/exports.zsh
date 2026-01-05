export EDITOR="nvim"
export LESS="-R -X -F"

# rails
export DISABLE_SPRING=true

export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export RCRC=$HOME/dotfiles/rcrc
export PATH="$(yarn global bin):$PATH"

# postgresApp
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
#export PATH="/usr/local/sbin:$PATH"
#export PATH="$HOME/.local/bin/:$PATH"
#export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
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

# rails
export DISABLE_SPRING=1
export SUPPRESS_SPRING_WARNING=true
