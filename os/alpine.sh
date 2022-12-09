#!/bin/sh
#
# Name: alpine.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my alpine environment.
#

echo 'Running Alpine Install Script!'

echo 'alias r='$HOME/.dotfiles/ish+x.sh'' > $HOME/.ashrc
echo 'alias u='$HOME/.dotfiles/ish-x.sh'' >> $HOME/.ashrc
echo 'alias g="git status"' >> $HOME/.ashrc

