#!/bin/sh
#
# Name: uninstall.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Uninstallation script for my Unix environment.
#

echo 'Running Unix Uninstall Script!'

OS="$(cat /etc/os-release | grep ID)"

case $OS in 
  *'alpine'* )
    /bin/sh $HOME/.dotfiles/os/alpine_uninstall.sh
    ;;
esac

