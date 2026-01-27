#!/bin/sh
#
# Name:         install.sh
#
# Description:  Installation script for my Unix environment.
#
# Author:       Daniel Ribeirinha-Braga
#

echo "Running Unix install script!"

if [ "$(uname)" = "Darwin" ]; then
   /bin/sh $HOME/.dotfiles/os/mac.sh
elif [ -n "$TERMUX_VERSION" ]; then
   /data/data/com.termux/files/usr/bin/bash $HOME/.dotfiles/os/termux.sh
else
  OS="$(cat /etc/os-release | grep ID)"

  case $OS in 
    *"alpine"* )
      /bin/sh $HOME/.dotfiles/os/alpine.sh
      ;;
    *"amzn"* )
      /bin/sh $HOME/.dotfiles/os/amzn.sh
      ;;
    *"kali"* )
      /bin/sh $HOME/.dotfiles/os/kali.sh
      ;;
    *"rhel"* )
      /bin/sh $HOME/.dotfiles/os/rhel.sh
      ;;
    *"ubuntu"* )
      /bin/sh $HOME/.dotfiles/os/ubuntu.sh
      ;;
    *"debian"* )
      /bin/sh $HOME/.dotfiles/os/debian.sh
      ;;
  esac

fi

