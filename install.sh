echo 'Downloading thoughtbot/laptop....'

cd $HOME
# if macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac

  if [ ! -L "$HOME/.laptop.local" ]; then
      echo "Symlinking .laptop.local..."
      ln -s  "$HOME/dotfiles/laptop.local" "$HOME/.laptop.local"
  else
      echo ".laptop.local already linked..."
  fi

  echo 'Running `sh mac 2>&1 | tee ~/laptop.log`...'

  sh mac 2>&1 | tee ~/laptop.log
else # Linux basic setup
  # install ohmyzsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  npm install --global pure

  # install RCM
  sudo apt-get install software-properties-common
  sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
  sudo apt-get update
  sudo apt-get install software-properties-common rcm fzf ripgrep

  export RCRC=$HOME/dotfiles/rcrc

  # NOTE: this hasn't been tested
  echo 'linking rc files'
  rcup
fi

# Great Git Defaults
git config --global pull.rebase true
git config --global fetch.prune true
git config --global diff.colorMoved zebra
