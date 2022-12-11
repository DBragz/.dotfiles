#!/bin/sh
#
# Name: alpine.sh
#
# Author: Daniel Ribeirinha-Braga
ý
# Description: Installation script for my alpine environment.
#

echo 'Running Alpine Install Script!'

echo 'alias r='$HOME/.dotfiles/ish+x.sh'' > $HOME/.profile
echo 'alias u='$HOME/.dotfiles/ish-x.sh'' >> $HOME/.profile
echo 'alias g="git status"' >> $HOME/.profile
echo 'alias l="ls -la"' >> $HOME/.profile

