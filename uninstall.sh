#!/bin/sh
#
# Name: uninstall.sh
#
# Author: Daniel Ribeirinha-Braga
#
# Description: Uninstallation script for my Unix environment.
#

echo 'Running Unix Uninstall Script!'

rm $HOME/.profile

apk del vim

