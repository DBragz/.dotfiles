#!/bin/sh
#
# Name: mac.sh
#
# Description: Installation script for my Mac environment.
#
# Author: Daniel Ribeirinha-Braga
#

mkdir -p $HOME/.config/nvim/
mkdir -p $HOME/.config/nvim/lua/
mkdir -p $HOME/.config/nvim/after/plugin/

cp $HOME/.dotfiles/configs/profiles/.zshrc $HOME
cp $HOME/.dotfiles/configs/lua/init.lua $HOME/.config/nvim/
cp $HOME/.dotfiles/configs/lua/options.lua $HOME/.config/nvim/lua/
cp $HOME/.dotfiles/configs/lua/plugins.lua $HOME/.config/nvim/lua/
cp $HOME/.dotfiles/configs/lua/colors.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lua/remap.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lua/tive.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lua/tree.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lua/treesitter.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lua/undotree.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lua/lsp.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lua/telescope.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/lua/harpoon.lua $HOME/.config/nvim/after/plugin/

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

if ! command -v brew &> /dev/null
then
  echo "Error: Homebrew could not be found"
  echo "Installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Installing Meslo Nerd Font"
  brew install font-meslo-lg-nerd-font
fi

if ! command -v starship &> /dev/null
then
  echo "Error: Starship could not be found"
  echo "Installing starship"
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
  brew install neovim
fi

echo "Completed Mac install script!"

