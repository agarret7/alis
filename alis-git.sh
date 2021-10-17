#!/usr/bin/env bash
set -e

cd $HOME

git clone https://github.com/agarret7/dotfiles.git
cp -rf dotfiles/.* ./ || true
rm -rf dotfiles/

# git clone https://github.com/syl20bnr/spacemacs ~/.spacemacs.d
# cp -rf ~/.spacemacs.d ~/.emacs.d
# rm -rf ~/.spacemacs.d

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd .. && rm -rf fonts
