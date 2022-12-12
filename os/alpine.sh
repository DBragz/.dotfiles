#!/bin/sh
#
# Name: alpine.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my alpine environment.
#

echo 'Running Alpine Install Script!'

cp $HOME/.dotfiles/configs/.profile $HOME/
cp $HOME/.dotfiles/configs/motd /etc/
cp $HOME/.dotfiles/configs/.vimrc $HOME/

if ! command -v vim &> /dev/null
then
    echo 'ERROR: vim could not be found'
    echo 'Installing vim'
    apk add vim
fi

