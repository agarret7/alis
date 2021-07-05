#!/usr/bin/env bash
set -e

# install packages
./alis-packages.sh
./alis-git.sh

# refresh terminal
xrdb ~/.Xresources
exec bash
