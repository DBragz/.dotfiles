#!/bin/sh
#
# Name:         install.sh
#
# Description:  Installation script for my Unix environment.
#
# Author:       Daniel Ribeirinha-Braga
#

echo "Running Unix install script!"

if [ "$(uname)" == "Darwin" ]; then
   /bin/sh $HOME/.dotfiles/os/mac.sh
else

  OS="$(cat /etc/os-release | grep ID)"

  case $OS in 
    *"alpine"* )
      /bin/sh $HOME/.dotfiles/os/alpine.sh
      ;;
    "cat: /etc/os-release: No such file or directory" )
     /data/data/com.termux/files/use/bin/bash $HOME/.dotfiles/os/termux.sh
     ;;
  esac

fi

