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

if ! command -v gh &> /dev/null
then
  echo "Error: GitHub CLI could not be found"
  echo "Installing gh"
  sudo apt install gh -y
fi

echo "Completed Kali Linux install script!"

