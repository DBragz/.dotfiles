#!/bin/sh
#
# Name: install.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Initial installation script for my Unix environment.
#

echo "Running Unix Install Script!"

if [ "$(uname)" == "Darwin" ]; then
  echo "I am MacOS!"
else
  echo "I am Linux!"
fi

OS="$(cat /etc/os-release | grep ID)"

case $OS in 
  *"alpine"* )
    /bin/sh os/alpine.sh
    ;;
esac

