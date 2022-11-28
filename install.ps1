<# .SYNOPSIS
	Windows Environment Initialization
.DESCRIPTION
	Initial installation script for my Windows environment.
.NOTES
	Author: Daniel Ribeirinha-Braga - dmrbraga@gmail.com
#>

Invoke-WebRequest -useb chocolatey.org/install.ps1 | Invoke-Expression

Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression

scoop bucket add main
scoop bucket add extras

scoop install neovim

Copy-Item .\.vimrc C:\Users\DBrags\AppData\Local\nvim\init.vim

