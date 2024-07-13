#!/bin/sh
#
# Name: termux.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my Termux environment.
#

if [ ! -d ~/.vim/autoload || ! -d ~/.vim/bundle ]; then
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

if ! command -v man &> /dev/null
then
  echo "Error: man could not be found"
  echo "Installing man"
  pkg install man
fi

if ! command -v bat &> /dev/null
then
  echo "Error: Bat could not be found"
  echo "Installing bat"
  pkg install vim
fi

if ! command -v vim &> /dev/null
then
  echo "Error: Vim could not be found"
  echo "Installing vim"
  pkg install vim
fi

cp $HOME/.dotfiles/configs/profiles/.profile $HOME/
cp $HOME/.dotfiles/configs/profiles/.vimrc $HOME/

if ! command -v gh &> /dev/null
then
  echo "Error: GitHub CLI could not be found"
  echo "Installing gh"
  pkg install gh
fi

echo "Completed Termux install script!"

