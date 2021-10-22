echo 'Downloading basicbrogrammer/laptop.... (thoughtbot fork)'

cd $HOME
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac

if [ ! -L "$HOME/.laptop.local" ]; then
    echo "Symlinking .laptop.local..."
    ln -s  "$HOME/dotfiles/laptop.local" "$HOME/.laptop.local"
else
    echo ".laptop.local already linked..."
fi

echo 'Running `sh mac 2>&1 | tee ~/laptop.log`...'
sh mac 2>&1 | tee ~/laptop.log
echo 'You may want to install: \n'
echo '1. amphetamine'
