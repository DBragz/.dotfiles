#!/bin/sh
#
# Name: termux.sh
#
# Description: Installation script for my termux environment.
#
# Author: Daniel Ribeirinha-Braga
#

cp $HOME/.dotfiles/configs/profiles/.profile $HOME/
cp $HOME/.dotfiles/configs/profiles/.vimrc $HOME/

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

if ! command -v vim &> /dev/null
then
  echo "Error: vim could not be found"
  echo "Installing VIM - Vi IMproved"
  pkg install vim
fi

echo "Completed Termux install script!"
