#!/bin/sh
#
# Name: alpine_uninstall.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Uninstallation script for my Alpine environment.
#

echo 'Running Alpine Uninstall Script!'

rm $HOME/.profile

apk del vim tmux mandoc man-pages

