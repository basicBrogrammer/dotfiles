#!/bin/sh

echo 'Downloading thoughtbot/laptop....'

cd $HOME

sudo apt-get update
sudo apt-get install -y fzf ripgrep

# instal omtmux
# git clone https://github.com/gpakosz/.tmux.git
# ln -s -f .tmux/.tmux.conf
# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ln -s $HOME/dotfiles/spacevim $HOME/.spacevim
# ln -s $HOME/dotfiles/zsh $HOME/.zsh
# ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc
# ln -s $HOME/dotfiles/tmux.conf.local $HOME/.tmux.conf.local

# install space-vim
# git clone https://github.com/liuchengxu/space-vim.git $HOME/space-vim
# cd $HOME/space-vim
# make neovim  # install space-vim for NeoVim

cd $HOME

# Great Git Defaults
git config --global pull.rebase true
git config --global fetch.prune true
git config --global diff.colorMoved zebra
