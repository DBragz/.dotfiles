<# .SYNOPSIS
	Windows Environment Uninstialization
.DESCRIPTION
	Uninstallation script for my Windows environment.
.NOTES
	Author: Daniel Ribeirinha-Braga - dmrbraga@gmail.com
#>

Write-Host "Running Windows uninstall script"

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
	Write-Host "Uninstalling fzf"
	scoop uninstall fzf
}

if(Get-Command nvim -errorAction silentlyContinue){
	Write-Host "Uninstalling Neovim"
	scoop install neovim
}

Write-Host "Completed Windows uninstall script"
