#!/bin/sh
#
# Name: install.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Initial installation script for my Linux environment.
#

init() {
  echo "Running Linux Install Script!"
}

oscheck() {
  cat /etc/os-release
}

init
oscheck

