<# 
.SYNOPSIS
  Windows 10 environment uninitialization.

.DESCRIPTION
  Uninstallation script for my Windows 10 environment.

.FILE
  uninstall.ps1

.NOTES
  Author: Daniel Ribeirinha-Braga
#>

Write-Host "Running Windows 10 uninstall script"

Remove-Item -Type Directory -Force -Recurse $env:LOCALAPPDATA\clink
Remove-Item -Type Directory -Force -Recurse $env:LOCALAPPDATA\nvim\lua\
Remove-Item -Type File -Force $PROFILE
Remove-Item -Type File -Force $PROFILE "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

choco uninstall clink-maintained -y --force

if(Get-Command pwsh -errorAction SilentlyContinue){
	Write-Host "Uninstalling PowerShell 7"
	winget uninstall -e --id Microsoft.PowerShell
}

if(Get-Command wt -errorAction SilentlyContinue){
	Write-Host "Uninstalling Windows Terminal"
	scoop uninstall windows-terminal
}

if(Get-Command choco -errorAction SilentlyContinue){
	Write-Host "Uninstalling Chocolately"
  Remove-Item -Type File -Force -Recurse $env:ChocolateyInstall
}

if(Get-Command scoop -errorAction SilentlyContinue){
	Write-Host "Uninstalling Scoop"
	scoop uninstall scoop
}

if(Get-Command oh-my-posh -errorAction SilentlyContinue){
	Write-Host "Uninstalling Oh My Posh"
	winget uninstall JanDeDobbeleer.OhMyPosh -s winget
}

if(Get-Command starship -errorAction silentlyContinue){
	Write-Host "Uninstalling Starship"
	scoop uninstall starship
}

if(Get-Command fzf -errorAction silentlyContinue){
	Write-Host "Uninstalling command-line fuzzy finder"
	scoop uninstall fzf
}

if(Get-Command nvim -errorAction silentlyContinue){
	Write-Host "Uninstalling Neovim"
	scoop uninstall neovim
}

if(Get-Command java -errorAction silentlyContinue){
	Write-Host "Uninstalling OpenJDK"
	scoop uninstall openjdk
}

if(Get-Command node -errorAction silentlyContinue){
	Write-Host "Uninstalling Node.js"
	scoop uninstall node
}

if(Get-Command lua -errorAction silentlyContinue){
	Write-Host "Uninstalling Lua"
	choco uninstall lua -y
}

if(Get-Command gcc -errorAction silentlyContinue){
	Write-Host "Uninstalling GNU Compiler Collection"
	scoop uninstall gcc 
}

Write-Host "Completed Windows uninstall script"
