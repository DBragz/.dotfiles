#!/bin/sh
#
# Name: alpine.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my alpine environment.
#

if ! command -v man &> /dev/null
then
  echo "Error: Mandoc could not be found"
  echo "Installing man"
  apk add mandoc man-pages
fi

if ! command -v tmux &> /dev/null
then
  echo "Error: Tmux could not be found"
  echo "Installing tmux"
  apk add tmux
fi

if ! command -v fzf  &> /dev/null
then
  echo "Error: fzf could not be found"
  echo "Installing fzf"
  apk add fzf
fi

if ! command -v rg &> /dev/null
then
  echo "Error: ripgrep could not be found"
  echo "Installing rg"
  apk add ripgrep
fi

if ! command -v bat &> /dev/null
then
  echo "Error: Bat could not be found"
  echo "Installing bat"
  apk add bat
fi

if ! command -v starship &> /dev/null
then
  echo "Error: Starship could not be found"
  echo "Installing starship"
  apk add starship
fi

if ! command -v curl &> /dev/null
then
  echo "Error: cURL could not be found"
  echo "Installing curl"
  apk add curl
fi

if ! command -v vim &> /dev/null
then
  echo "Error: Vim could not be found"
  echo "Installing vim"
  apk add vim
fi

cp $HOME/.dotfiles/configs/profiles/.vimrc $HOME/

#if [ ! -d ~/.vim/autoload || ! -d ~/.vim/bundle ]; then
#mkdir -p ~/.vim/autoload ~/.vim/bundle && \
#  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
#fi

#cd ~/.vim/bundle && \
#  git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if ! command -v gh &> /dev/null
then
  echo "Error: GitHub CLI could not be found"
  echo "Installing gh"
  apk add gh
fi

echo "Completed Alpine install script!"

