<# .SYNOPSIS
	Windows Environment Initializa 
.DESCRIPTION
	Initial installation script for my Windows environment.
.NOTES
	Author: Daniel Ribeirinha-Braga - dmrbraga@gmail.com
#>

Invoke-WebRequest -useb chocolatey.org/install.ps1 | Invoke-Expression

Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression

scoop bucket add main
scoop bucket add extras
