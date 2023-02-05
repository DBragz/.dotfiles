#!/bin/sh
#
# Name: alpine_uninstall.sh
#
# Description: Uninstallation script for my Alpine environment.
#
# Author: Daniel Ribeirinha-Braga
#

rm $HOME/.profile

apk del mandoc man-pages tmux starship vim fzf curl

echo "Completed Alpine uninstall script!"

