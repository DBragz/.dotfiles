#!/bin/sh
#
# Name: alpine_uninstall.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Uninstallation script for my Alpine environment.
#

rm $HOME/.profile

apk del vim tmux mandoc man-pages fzf starship curl

echo "Completed Alpine uninstall script!"

