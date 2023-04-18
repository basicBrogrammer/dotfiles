#!/bin/sh

echo 'Downloading thoughtbot/laptop....'

cd $HOME

sudo apt-get update
sudo apt-get install -y fzf ripgrep

# instal omtmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf .
# install ohmyzsh
git clone https://github.com/ohmyzsh/ohmyzsh
sh ohmyzsh/tools/install.sh

ln -s $HOME/dotfiles/zsh $HOME/.zsh
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/tmux.conf.local $HOME/.tmux.conf.local
ln -s $HOME/dotfiles/config/nvim $HOME/.config/nvim

cd $HOME

# Great Git Defaults
git config --global pull.rebase true
git config --global fetch.prune true
git config --global diff.colorMoved zebra
