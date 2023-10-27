#!/bin/zsh
#
# Name: .zshrc
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Profile file for Oh My Zsh shell.
#

alias dh="cat $HOME/.zshrc"
alias i=$HOME/.dotfiles/install.sh
alias u=$HOME/.dotfiles/uninstall.sh
alias e=exit
alias c=clear
alias l="ls -la"
alias git="git init"
alias gs="git status"
alias ga="git add ."
alias gd="git diff"
alias gct="git commit -m $1"
alias gph="git push origin"
alias gpl="git pull"
alias grhh="git reset --hard HEAD"
alias grh="git reset --hard $1"
alias glg="git log $1"
alias gd="git diff $1"
alias m="man $1"
alias t=tmux

eval "$(starship init zsh)"

export PATH="/usr/local/opt/openjdk/bin:$PATH"

