<# .SYNOPSIS
	Windows Environment Initialization
.DESCRIPTION
	Installation script for my Windows environment.
.NOTES
	Author: Daniel Ribeirinha-Braga - dmrbraga@gmail.com
#>

Invoke-WebRequest -useb chocolatey.org/install.ps1 | Invoke-Expression

Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression

scoop bucket add main
scoop bucket add extras

scoop install neovim

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

Copy-Item .\configs\init.vim $env:LOCALAPPDATA\nvim\init.vim

winget install -e --id Microsoft.PowerShell

