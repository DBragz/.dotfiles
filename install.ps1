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

winget install -e --id Microsoft.PowerShell

scoop install neovim starship

Copy-Item $env:HOMEPATH\.dotfiles\Microsoft.PowerShell_profile.ps1 $PROFILE

