#!/bin/zsh
#
# Name: .zshrc
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Profile file for Oh My Zsh shell.
#

alias m="man $1"
alias l="ls -la"
alias c=clear
alias e=exit
alias i=$HOME/.dotfiles/install.sh
alias u=$HOME/.dotfiles/uninstall.sh
alias dh="bat $HOME/.zshrc"
alias gini="git init"
alias gs="git status"
alias ga="git add ."
alias gd="git diff"
alias gco="git commit -m $1"
alias gpus="git push origin"
alias gpul="git pull"
alias grhh="git reset --hard HEAD"
alias grh="git reset --hard $1"
alias glo="git log $1"
alias t=tmux

eval "$(starship init zsh)"

export PATH="/usr/local/opt/openjdk/bin:$PATH"

set_proxy() {
  export http_proxy="$1"
  export https_proxy="$1"
}


get_proxy() {
  echo "http_proxy: $http_proxy"
  echo "https_proxy: $https_proxy"
}

