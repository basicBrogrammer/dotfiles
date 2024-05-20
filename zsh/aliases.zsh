alias update='dev stop && dev up && dev start'
alias s='spin'
alias bp='spin up business-platform --wait --memory=64 -n'
# #directories
alias c='clear; tmux clear-history 2> /dev/null; tmux clear-history 2> /dev/null'
alias ipynb_to_py='jupyter nbconvert --to script'
alias ll='ls -alhF'
alias py='ipython'
alias da='direnv allow'
alias v='nvim'
alias vd='nvim .'
alias history='fc -l 1'

alias t='tmux'
alias tat='tmux a -t'
alias tk='tmux kill-session -t'
alias ts='mux start'
alias tls='tmux ls'


# postgres
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -m fast'

# git
alias gla="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
alias grom='nocorrect git rebase origin/master'
alias gpr='nocorrect git pull --rebase'
alias gm='nocorrect git merge --no-ff'
#alias gp='nocorrect git push origin'
alias gphm='git push heroku master'
alias gpdm='git push dokku master'
alias gclean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gprune='git remote prune origin'
alias gflow='git reflow'
alias gdno='git diff --name-only'
alias gsno='git show --name-only'

# docker
alias dk='docker'
alias dkc='docker container'
alias dki='docker image'
alias dc='docker-compose'

# ruby-related
alias be='bundle exec'
alias dbreset='bundle exec rake db:reset db:test:prepare'
alias esearchgo='brew services start elasticsearch'
alias frc='nocorrect bundle exec foreman run rails c'
alias jdev='jekyll serve --config _config.yml,_config_dev.yml'
alias parspec='nocorrect bundle exec rake parallel:spec'
alias rake='noglob bundle exec rake'
alias rc='nocorrect bundle exec rails c'
alias redisgo='redis-server /usr/local/etc/redis.conf'
alias rnf='nocorrect bundle exec rspec --next-failure'
alias rof='nocorrect bundle exec rspec --only-failures'
alias rs='nocorrect bundle exec rails s'
alias wds='bin/webpack-dev-server'
alias rspec='nocorrect bundle exec rspec'

# JS is taking over
alias rn='react-native'
alias y='yarn'
alias yes='yarn ember serve'
alias yet='yarn ember test'
alias nr='npm run'

# random
alias weather='curl http://wttr.in/27587'
alias spot='spotify'
alias gith='cat ~/dotfiles/rcm-ignore/git-omz-doc.text | grep'
alias blueVolume='defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int'
alias ctagsg='ctags -R --exclude=@.ctagsignore .'
alias spotlight='sudo mdutil -a -i' # <off/on>
