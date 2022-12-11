#!/bin/sh
#
# Name: alpine.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my alpine environment.
#

echo 'Running Alpine Install Script!'

echo 'alias r='$HOME/.dotfiles/ish+x.sh'' > $HOME/.profile
echo 'alias u='$HOME/.dotfiles/ish-x.sh'' >> $HOME/.profile
echo 'alias l="ls -la"' >> $HOME/.profile
echo 'alias g="git status"' >> $HOME/.profile
echo 'alias a="git add ."' >> $HOME/.profile
echo 'alias p="git push origin"' >> $HOME/.profile


