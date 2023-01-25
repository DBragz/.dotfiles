#!/bin/sh
#
# Name: alpine_uninstall.sh
#
# Description: Uninstallation script for my Alpine environment.
#
# Author: Daniel Ribeirinha-Braga
#

rm $HOME/.profile

apk del vim tmux mandoc man-pages fzf starship curl

echo "Completed Alpine uninstall script!"

