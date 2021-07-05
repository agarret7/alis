#!/usr/bin/env bash
set -e


# install system packages
./alis-packages.sh

# create ssh key (will prompt password)
ssh-keygen -t ed25519 -C "agarrett777@gmail.com" -f $HOME/.ssh/id_ed25519
echo "PUB KEY: $(cat)"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Add your key to github and press any key to continue..."
read

# install git packages
./alis-git.sh

# refresh system with configuration updated
i3-msg reload
xrdb ~/.Xresources
exec bash
