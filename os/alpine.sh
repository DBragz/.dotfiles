#!/bin/sh
#
# Name: alpine.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my alpine environment.
#

echo 'Running Alpine Install Script!'

rm /etc/motd

cp $HOME/.dotfiles/configs/.profile $HOME/
cp $HOME/.dotfiles/configs/motd /etc/
cp $HOME/.dotfiles/configs/.vimrc $HOME/

if ! command -v vim &> /dev/null
then
  echo 'ERROR: vim could not be found'
  echo 'Installing vim'
  apk add vim
fi

if ! command -v tmux &> /dev/null
then
  echo 'ERROR: tmux could not be found'
  echo 'Installing tmux'
  apk add tmux
fi

if ! command -v man &> /dev/null
then
  echo 'ERROR: man could not be found'
  echo 'Installing man'
  apk add mandoc man-pages
fi

if ! command -v fzf  &> /dev/null
then
  echo 'ERROR: fzf could not be found'
  echo 'Installing fzf'
  apk add fzf
fi

if ! command -v starship &> /dev/null
then
  echo 'ERROR: starship could not be found'
  echo 'Installing starship'
  apk add starship
fi

