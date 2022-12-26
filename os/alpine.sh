#!/bin/sh
#
# Name: alpine.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my alpine environment.
#

rm /etc/motd

cp $HOME/.dotfiles/configs/.profile $HOME/
cp $HOME/.dotfiles/configs/motd /etc/
cp $HOME/.dotfiles/configs/.vimrc $HOME/

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

if ! command -v vim &> /dev/null
then
  echo 'Error: vim could not be found'
  echo 'Installing vim'
  apk add vim
fi

if ! command -v tmux &> /dev/null
then
  echo 'Error: tmux could not be found'
  echo 'Installing tmux'
  apk add tmux
fi

if ! command -v man &> /dev/null
then
  echo 'Error: man could not be found'
  echo 'Installing man'
  apk add mandoc man-pages
fi

if ! command -v fzf  &> /dev/null
then
  echo 'Error: fzf could not be found'
  echo 'Installing fzf'
  apk add fzf
fi

if ! command -v starship &> /dev/null
then
  echo 'Error: starship could not be found'
  echo 'Installing starship'
  apk add starship
fi

if ! command -v curl &> /dev/null
then
  echo 'Error: curl could not be found'
  echo 'Installing curl'
  apk add curl
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo 'Completed Alpine Install Script!'


