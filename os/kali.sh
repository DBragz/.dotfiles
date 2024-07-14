#!/bin/sh
#
# Name: kali.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Installation script for my Kali Linux environment.
#

if ! command -v wezterm > /dev/null
then
  echo "Error: Wezterm could not be found"
  echo "Installing wezterm"
  curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
  echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
  sudo apt update
  sudo apt install wezterm -y
fi

mkdir -p $HOME/.config/wezterm/

cp $HOME/.dotfiles/configs/wezterm/wezterm.lua $HOME/.config/wezterm/

if ! command -v nvim > /dev/null
then
  echo "Error: Neovim could not be found"
  echo"Installing nvim"
  sudo apt install neovim -y
fi

if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

mkdir -p $HOME/.config/nvim/
mkdir -p $HOME/.config/nvim/lua/
mkdir -p $HOME/.config/nvim/after/plugin/

cp $HOME/.dotfiles/configs/neovim/init.lua $HOME/.config/nvim/
cp $HOME/.dotfiles/configs/neovim/options.lua $HOME/.config/nvim/lua/
cp $HOME/.dotfiles/configs/neovim/plugins.lua $HOME/.config/nvim/lua/
cp $HOME/.dotfiles/configs/neovim/colors.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/neovim/remap.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/neovim/tive.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/neovim/tree.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/neovim/treesitter.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/neovim/undotree.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/neovim/zero.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/neovim/telescope.lua $HOME/.config/nvim/after/plugin/
cp $HOME/.dotfiles/configs/neovim/harpoon.lua $HOME/.config/nvim/after/plugin/


if ! command -v gh > /dev/null
then
  echo "Error: GitHub CLI could not be found"
  echo "Installing gh"
  sudo apt install gh -y
fi

echo "Completed Kali Linux install script!"

