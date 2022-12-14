#!/bin/sh
#
# Name: install.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my Unix environment.
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
  esac

fi

