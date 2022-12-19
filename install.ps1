<# .SYNOPSIS
	Windows Environment Initialization
.DESCRIPTION
	Installation script for my Windows environment.
.NOTES
	Author: Daniel Ribeirinha-Braga - dmrbraga@gmail.com
#>

New-Item -Type Directory -Force $env:LOCALAPPDATA\clink
New-Item -Type Directory -Force $env:LOCALAPPDATA\nvim\lua\
New-Item -Type File -Force $Profile

Copy-Item $env:HOMEPATH\.dotfiles\configs\Microsoft.PowerShell_profile.ps1 $PROFILE
Copy-Item $env:HOMEPATH\.dotfiles\configs\starship.lua $env:LOCALAPPDATA\clink\
Copy-Item $env:HOMEPATH\.dotfiles\configs\init.lua $env:LOCALAPPDATA\nvim\
Copy-Item $env:HOMEPATH\.dotfiles\configs\remap.lua $env:LOCALAPPDATA\nvim\lua\
Copy-Item $env:HOMEPATH\.dotfiles\configs\plugins.lua $env:LOCALAPPDATA\nvim\lua\

git clone https://github.com/wbthomason/packer.nvim $env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim

if((Get-Host).Version.Major -eq 5){
	Write-Host "Error: PowerShell 5 found requires PowerShell 7"
	Write-Host "Installing PowerShell 7"
	winget install -e --id Microsoft.PowerShell
}

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

if(-not (Get-Command oh-my-posh -errorAction SilentlyContinue)){
	Write-Host "Error: oh-my-posh could not be found"
	Write-Host "Installing oh-my-posh"
	winget install JanDeDobbeleer.OhMyPosh -s winget
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

choco install clink-maintained -y --force

$env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Process)
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::User)

oh-my-posh font install Meslo

