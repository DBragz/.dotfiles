#!/bin/sh
#
# Name: .profile
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Profile file for Alpine Unix operating system.
#

alias h=help
alias m="man $1"
alias l="ls -la"
alias c=clear
alias e=exit
alias i=$HOME/.dotfiles/install.sh
alias u=$HOME/.dotfiles/uninstall.sh
alias dh="cat $HOME/.profile"
alias gini="git init"
alias gs="git status"
alias ga="git add ."
alias gd="git diff"
alias gco="git commit -m $1"
alias gpus="git push origin"
alias gpul="git pull"
alias grhh="git reset --hard HEAD"
alias grh="git reset --hard $1"
alias glo="git log -$1"
alias t=tmux

