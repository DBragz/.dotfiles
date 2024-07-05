#!/bin/sh
#
# Name: rhel.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my Red Hat Enterprise Linux environment.
#

cp $HOME/.dotfiles/configs/profiles/.vimrc $HOME/

if ! command -v gh &> /dev/null
then
  echo "Error: GitHub CLI could not be found"
  echo "Installing gh"
  # sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
  dnf install gh
fi

echo "Completed Red Hat Enterprise Linux install script!"

