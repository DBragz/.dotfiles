#!/bin/sh
#
# Name: ubuntu.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my Ubuntu Linux environment.
#

cp $HOME/.dotfiles/configs/profiles/.bashrc $HOME
cp $HOME/.dotfiles/configs/profiles/.tmux.conf $HOME
cp $HOME/.dotfiles/configs/profiles/.vimrc $HOME/

if ! command -v bat &> /dev/null
then
  echo "Error: Bat could not be found"
  echo "Installing bat"
  brew install bat
fi

echo "Completed Ubuntu Linux install script!"

