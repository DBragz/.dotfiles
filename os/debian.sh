#!/bin/sh
#
# Name:         debian.sh
#
# Author:       Daniel Ribeirinha-Braga
#
# Description:  Installation script for my Linux Debian environment.
#

cp $HOME/.dotfiles/configs/profiles/.bashrc $HOME/.bash_aliases
cp $HOME/.dotfiles/configs/profiles/.tmux.conf $HOME
cp $HOME/.dotfiles/configs/profiles/.vimrc $HOME/

echo "Completed Debian install script!"

