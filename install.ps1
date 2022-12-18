<# .SYNOPSIS
	Windows Environment Initialization
.DESCRIPTION
	Installation script for my Windows environment.
.NOTES
	Author: Daniel Ribeirinha-Braga - dmrbraga@gmail.com
#>

New-Item -Type Directory -Force $env:LOCALAPPDATA\clink
New-Item -Type Directory -Force $env:LOCALAPPDATA\nvim\lua\

Copy-Item $env:HOMEPATH\.dotfiles\configs\Microsoft.PowerShell_profile.ps1 $PROFILE
Copy-Item $env:HOMEPATH\.dotfiles\configs\starship.lua $env:LOCALAPPDATA\clink\
Copy-Item $env:HOMEPATH\.dotfiles\configs\init.lua $env:LOCALAPPDATA\nvim\
Copy-Item $env:HOMEPATH\.dotfiles\configs\remap.lua $env:LOCALAPPDATA\nvim\lua\
Copy-Item $env:HOMEPATH\.dotfiles\configs\plugins.lua $env:LOCALAPPDATA\nvim\lua\

git clone https://github.com/wbthomason/packer.nvim $env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim

choco install clink-maintained -y --force

if(-not (Get-Command choco -errorAction SilentlyContinue)){
	Write-Host "Error: choco could not be found"
	Write-Host "Installing chocolately"
	Invoke-WebRequest -useb chocolatey.org/install.ps1 | Invoke-Expression
}

if(-not (Get-Command scoop -errorAction SilentlyContinue)){
	Write-Host "Error: scoop could not be found"
	Write-Host "Installing scoop"
	Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
	scoop bucket add main
	scoop bucket add extras
}

if(-not ((Get-Host).Version.Major -eq 7)){
	Write-Host "Error: PowerShell 7 could not be found"
	Write-Host "Installing PowerShell 7"
	winget install -e --id Microsoft.PowerShell
}

if(-not (Get-Command starship -errorAction silentlyContinue)){
	Write-Host "Error: starship could not be found"
	Write-Host "Installing starship"
	scoop install starship
}

if(-not (Get-Command fzf -errorAction silentlyContinue)){
	Write-Host "Error: fzf could not be found"
	Write-Host "Installing fzf"
	scoop install fzf
}

if(-not (Get-Command neovim -errorAction silentlyContinue)){
	Write-Host "Error: neovim could not be found"
	Write-Host "Installing neovim"
	scoop install neovim
}

