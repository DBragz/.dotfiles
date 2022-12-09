#!/bin/sh
#
# Name: install.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my Unix environment.
#

echo 'Running Unix Install Script!'

if [ '$(uname)' == 'Darwin' ]; then
   /bin/sh os/mac.sh
else

  OS="$(cat /etc/os-release | grep ID)"

  case $OS in 
    *'alpine'* )
      /bin/sh os/alpine.sh
      ;;
  esac

fi

