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
cp $HOME/.dotfiles/configs/json/vscode.json $HOME/Library/Application\ Support/Code/User/settings.json 

if ! command -v tmux &> /dev/null
then
  echo "Error: Terminal multiplexer could not be found"
  echo "Installing tmux"
  brew install tmux
fi

if ! command -v starship &> /dev/null
then
  echo "Error: Starship could not be found"
  echo "Installing starship"
  brew install starship
fi

if ! command -v fzf &> /dev/null
then
  echo "Error: Command-line fuzzy finder could not be found"
  echo "Installing fzf"
  brew install fzf
fi

if ! command -v nvim &> /dev/null
then
  echo "Error: Neovim could not be found"
  echo "Installing nvim"
  brew install neovim
fi

if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

if ! command -v brew &> /dev/null
then
  echo "Error: Homebrew could not be found"
  echo "Installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Installing Meslo Nerd Font"
  brew install font-meslo-lg-nerd-font
fi

if ! command -v code &> /dev/null
then
  echo "Error: Visual Studio Code could not be found"
  echo "Installing code"
  brew install code
fi

java=$(java -version 2>&1)

if [[ "${java}" == *"Unable to locate a Java Runtime."* ]]
then
  echo "Error: Java could not be found"
  echo "Installing openjdk"
  brew install openjdk
fi

if ! command -v node &> /dev/null
then
  echo "Error: Node.js could not be found"
  echo "Installing node"
  brew install node
fi

if ! command -v lua &> /dev/null
then
  echo "Error: Lua could not be found"
  echo "Installing lua"
  brew install lua
fi

if ! command -v luarocks &> /dev/null
then
  echo "Error: LuaRocks could not be found"
  echo "Installing luarocks"
  brew install luarocks
fi

if ! command -v gcc &> /dev/null
then
  echo "Error: GNU Compiler Collection could not be found"
  echo "Installing gcc"
  brew install gcc
fi

echo "Completed Mac install script!"

