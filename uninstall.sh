#!/bin/sh
#
# Name: uninstall.sh
#
# Description: Uninstallation script for my Unix environment.
#
# Author: Daniel Ribeirinha-Braga
#

echo "Running Unix uninstall script!"

OS="$(cat /etc/os-release | grep ID)"

case $OS in 
  *"alpine"* )
    /bin/sh $HOME/.dotfiles/os/alpine_uninstall.sh
    ;;
esac

