#!/usr/bin/env bash
set -e

cd $HOME

git clone https://github.com/agarret7/dotfiles.git
cp -rf dotfiles/.* ./
rm -rf dotfiles/

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd .. && rm -rf fonts
