<# .SYNOPSIS
	Windows environment initialization
.DESCRIPTION
	Installation script for my Windows environment.
.NOTES
	Author: Daniel Ribeirinha-Braga
  Name: install.ps1
#>

Write-Host "Running Windows install script"

New-Item -Type Directory -Force $env:LOCALAPPDATA\clink
New-Item -Type Directory -Force $env:LOCALAPPDATA\nvim\lua\
New-Item -Type Directory -Force $env:LOCALAPPDATA\nvim\after\plugin\
New-Item -Type File -Force $PROFILE

Copy-Item $env:HOMEPATH\.dotfiles\configs\profiles\Microsoft.PowerShell_profile.ps1 $PROFILE
Copy-Item $env:HOMEPATH\.dotfiles\configs\json\terminal.json $env:LOCALAPPDATA\Microsoft\"Windows Terminal" 
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\starship.lua $env:LOCALAPPDATA\clink\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\init.lua $env:LOCALAPPDATA\nvim\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\options.lua $env:LOCALAPPDATA\nvim\lua\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\plugins.lua $env:LOCALAPPDATA\nvim\lua\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\colors.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\remap.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\tive.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\tree.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\treesitter.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\undotree.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\lsp.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\telescope.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\harpoon.lua $env:LOCALAPPDATA\nvim\after\plugin\

git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

choco install clink-maintained -y --force

if (-not (Get-Command pwsh -errorAction SilentlyContinue)) {
  Write-Host "Error: PowerShell 7 not found"
  Write-Host "Installing PowerShell 7"
  winget install -e --id Microsoft.PowerShell
}

if (-not (Get-Command wt -errorAction SilentlyContinue)) {
  Write-Host "Error: Windows Terminal could not be found"
  Write-Host "Installing Windows Terminal"
  scoop install windows-terminal
}

if (-not (Get-Command choco -errorAction SilentlyContinue)) {
  Write-Host "Error: choco could not be found"
  Write-Host "Installing Chocolately"
  Invoke-WebRequest -useb chocolatey.org/install.ps1 | Invoke-Expression
}

if (-not (Get-Command scoop -errorAction SilentlyContinue)) {
  Write-Host "Error: scoop could not be found"
  Write-Host "Installing Scoop"
  Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
  scoop bucket add main
  scoop bucket add extras
}

if (-not (Get-Command oh-my-posh -errorAction SilentlyContinue)) {
  Write-Host "Error: oh-my-posh could not be found"
  Write-Host "Installing Oh My Posh"
  winget install JanDeDobbeleer.OhMyPosh -s winget
}

if (-not (Get-Command starship -errorAction silentlyContinue)) {
  Write-Host "Error: starship could not be found"
  Write-Host "Installing Starship"
  scoop install starship
}

if (-not (Get-Command fzf -errorAction silentlyContinue)) {
  Write-Host "Error: fzf could not be found"
  Write-Host "Installing fzf"
  scoop install fzf
}

if (-not (Get-Command nvim -errorAction silentlyContinue)) {
  Write-Host "Error: neovim could not be found"
  Write-Host "Installing Neovim"
  scoop install neovim
}

if (-not (Get-Command gcc -errorAction silentlyContinue)) {
  Write-Host "Error: GNU Compiler Collection could not be found"
  Write-Host "Installing gcc"
  scoop install gcc
}

oh-my-posh font install Meslo

Write-Host "Completed Windows install script"

