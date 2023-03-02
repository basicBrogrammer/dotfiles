#!/bin/sh

echo 'Downloading thoughtbot/laptop....'

cd $HOME

sudo apt-get update
sudo apt-get install -y fzf ripgrep

# instal omtmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf .
# install ohmyzsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s $HOME/dotfiles/zsh $HOME/.zsh
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/tmux.conf.local $HOME/.tmux.conf.local
ln -s $HOME/dotfiles/config/nvim $HOME/.config/nvim

# bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh -y)
# ln -sf $HOME/dotfiles/config/lvim/config.lua $HOME/.config/lvim/config.lua

# Packer Install
# nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

cd $HOME

# Great Git Defaults
git config --global pull.rebase true
git config --global fetch.prune true
git config --global diff.colorMoved zebra
