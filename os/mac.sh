#!/bin/sh
#
# Name: mac.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my Mac environment.
#

mkdir -p $HOME/.config/nvim/
mkdir -p $HOME/.config/lua/
mkdir -p $HOME/.config/after/plugin/

cp $HOME/.dotfiles/configs/.zshrc $HOME
cp $HOME/.dotfiles/configs/init.lua $HOME/.config/nvim/
cp $HOME/.dotfiles/configs/options.lua $HOME/.config/nvim/lua/
cp $HOME/.dotfiles/configs/remap.lua $HOME/.config/nvim/lua/
cp $HOME/.dotfiles/configs/plugins.lua $HOME/.config/nvim/lua/
cp $HOME/.dotfiles/configs/telescope.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/colors.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/treesitter.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/harpoon.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/undotree.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/fugitive.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lsp.lua $HOME/.config/nvim/after/plugin/

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

if ! command -v brew &> /dev/null
then
  echo "Error: Homebrew could not be found"
  echo "Install brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo "Install Cask"
  brew install cask
fi

if ! command -v starship &> /dev/null
then
  echo "Error: Starship could not be found"
  echo "Install starship"
  brew install starship
fi

if ! command -v gcc &> /dev/null
then
  echo "Error: GNU Compiler Collection could not be found"
  echo "Install gcc"
  brew install gcc
fi

if ! command -v nvim &> /dev/null
then
  echo "Error: Neovim could not be found"
  echo "Install nvim"
  brew install gcc
  brew install neovim
fi

echo "Completed Mac install script!"

