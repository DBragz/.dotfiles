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
cp $env:HOMEPATH\.dotfiles\configs\json\vscode.json $env:HOME\settings.json 

if (-not (Test-Path "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim" -PathType Container)) {
  git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
}

choco install clink-maintained -y --force

if (-not (Get-Command pwsh -errorAction SilentlyContinue)) {
  Write-Host "Error: PowerShell 7 not found"
  Write-Host "Installing Microsoft.PowerShell"
  winget install -e --id Microsoft.PowerShell
}

if (-not (Get-Command wt -errorAction SilentlyContinue)) {
  Write-Host "Error: Windows Terminal could not be found"
  Write-Host "Installing windows-terminal"
  scoop install windows-terminal
}

if (-not (Get-Command choco -errorAction SilentlyContinue)) {
  Write-Host "Error: Chocolately could not be found"
  Write-Host "Installing choco"
  Invoke-WebRequest -useb chocolatey.org/install.ps1 | Invoke-Expression
}

if (-not (Get-Command scoop -errorAction SilentlyContinue)) {
  Write-Host "Error: Scoop could not be found"
  Write-Host "Installing scoop"
  Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
  scoop bucket add main
  scoop bucket add extras
}

if (-not (Get-Command oh-my-posh -errorAction SilentlyContinue)) {
  Write-Host "Error: Oh My Posh could not be found"
  Write-Host "Installing oh-my-posh"
  winget install JanDeDobbeleer.OhMyPosh -s winget
}

if (-not (Get-Command starship -errorAction silentlyContinue)) {
  Write-Host "Error: Starship could not be found"
  Write-Host "Installing starship"
  scoop install starship
}

if (-not (Get-Command fzf -errorAction silentlyContinue)) {
  Write-Host "Error: Command-line fuzzy finder could not be found"
  Write-Host "Installing fzf"
  scoop install fzf
}

if (-not (Get-Command nvim -errorAction silentlyContinue)) {
  Write-Host "Error: Neovim could not be found"
  Write-Host "Installing neovim"
  scoop install neovim
}

if (-not (Get-Command code -errorAction silentlyContinue)) {
  Write-Host "Error: Visual Studio code could not be found"
  Write-Host "Installing code"
  scoop install neovim
}

if (-not (Get-Command java -errorAction silentlyContinue)) {
  Write-Host "Error: Java could not be found"
  Write-Host "Installing openjdk"
  scoop install openjdk
}

if (-not (Get-Command node -errorAction silentlyContinue)) {
  Write-Host "Error: Node.js could not be found"
  Write-Host "Installing node"
  scoop install node
}

if (-not (Get-Command lua -errorAction silentlyContinue)) {
  Write-Host "Error: Lua could not be found"
  Write-Host "Installing lua"
  choco install lua -y 
}

if (-not (Get-Command gcc -errorAction silentlyContinue)) {
  Write-Host "Error: GNU Compiler Collection could not be found"
  Write-Host "Installing gcc"
  scoop install gcc
}

oh-my-posh font install Meslo

Write-Host "Completed Windows install script"

