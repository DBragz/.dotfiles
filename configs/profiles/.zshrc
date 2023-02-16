#
# Name: .zshrc
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Profile file for Oh My Zsh shell.
#

alias i=$HOME/.dotfiles/install.sh
alias u=$HOME/.dotfiles/uninstall.sh
alias e=exit
alias c=clear
alias l="ls -la"
alias gs="git status"
alias ga="git add ."
alias gd="git diff"
alias gcommit="git commit -m $1"
alias gpush="git push origin"
alias gpull="git pull"
alias m="man $1"

eval "$(starship init zsh)"

export PATH="/usr/local/opt/openjdk/bin:$PATH"

