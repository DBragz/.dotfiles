#
# Name: .zshrc
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Profile file for Oh My Zsh shell.
#

alias i=$HOME/.dotfiles/install.sh
alias u=$HOME/.dotfiles/uninstall.sh
alias l="ls -la"
alias e=exit
alias c=clear
alias gs="git status"
alias ga="git add ."
alias gd="git diff"
alias gc="git commit -m $1"
alias gpush="git push origin"
alias gpull="git pull"

eval "$(starship init zsh)"
1
export PATH="/usr/local/opt/openjdk/bin:$PATH"

