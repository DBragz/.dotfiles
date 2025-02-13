<# 
.SYNOPSIS
  Windows 11 environment initialization.

.DESCRIPTION
  Installation script for my Windows 11 environment.

.FILE
  install.ps1

.NOTES
  Author: Daniel Ribeirinha-Braga
#>

Write-Host "Running Windows 11 install script"

if (-not (Get-Command scoop -errorAction SilentlyContinue)) {
  Write-Host "Error: Scoop could not be found"
  Write-Host "Installing scoop"
  Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
  scoop bucket add main
  scoop bucket add extras
  scoop bucket add versions
}

if (-not (Get-Command choco -errorAction SilentlyContinue)) {
  Write-Host "Error: Chocolately could not be found"
  Write-Host "Installing choco"
  if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process -Wait pwsh -Verb runAs "& Invoke-WebRequest -useb chocolatey.org/install.ps1 | Invoke-Expression"
    Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
  }
}

if (-not (Get-Command wezterm -errorAction silentlyContinue)) {
  Write-Host "Error: Wezterm could not be found"
  Write-Host "Installing wezterm"
  winget install -e --id wez.wezterm
}

if (-not (Test-Path $env:HOMEPATH\.config\wezterm\ -PathType Container)) {
  New-Item -Type Directory $env:HOMEPATH\.config\wezterm\
}

Copy-Item $env:HOMEPATH\.dotfiles\configs\wezterm\wezterm.lua $env:HOMEPATH\.config\wezterm\

if (-not (Get-Command starship -errorAction silentlyContinue)) {
  Write-Host "Error: Starship could not be found"
  Write-Host "Installing starship"
  winget install -e --id Starship.Starship
}

if (-not (Test-Path 'C:\Program Files (x86)\clink\' )) {
  Write-Host "Error: Clink could not be found"
  Write-Host "Installing clink"
  winget install -e --id chrisant996.Clink
}

if (-not (Test-Path $env:LOCALAPPDATA\clink -PathType Container)) {
  New-Item -Type Directory $env:LOCALAPPDATA\clink
}

Copy-Item $env:HOMEPATH\.dotfiles\configs\startship\starship.lua $env:LOCALAPPDATA\clink\

if (-not (Get-Command oh-my-posh -errorAction SilentlyContinue)) {
  Write-Host "Error: Oh My Posh could not be found"
  Write-Host "Installing oh-my-posh"
  winget install JanDeDobbeleer.OhMyPosh -s winget
}

if (-not (Get-Command pwsh -errorAction SilentlyContinue)) {
  Write-Host "Error: PowerShell 7 not found"
  Write-Host "Installing pwsh"
  winget install -e --id Microsoft.PowerShell
}

if (-not (Get-Command fzf -errorAction silentlyContinue)) {
  Write-Host "Error: Command-line fuzzy finder could not be found"
  Write-Host "Installing fzf"
  winget install -e --id junegunn.fzf
}

if (-not (Get-Command bat -errorAction silentlyContinue)) {
  Write-Host "Error: Bat could not be found"
  Write-Host "Installing bat"
  winget install -e --id sharkdp.bat
}

if (-not (Get-Command gcc -errorAction silentlyContinue)) {
  Write-Host "Error: GNU compiler collection could not be found"
  Write-Host "Installing gcc"
  scoop install gcc
}

if (-not (Get-Command java -errorAction silentlyContinue)) {
  Write-Host "Error: Java could not be found"
  Write-Host "Installing java"
  winget install -e --id Oracle.JDK.22
}

if (-not (Get-Command python -errorAction silentlyContinue)) {
  Write-Host "Error: Python could not be found"
  Write-Host "Installing python"
  winget install -e --id Python.Python.3.12
}

if (-not (Get-Command node -errorAction silentlyContinue)) {
  Write-Host "Error: Node.js could not be found"
  Write-Host "Installing node"
  winget install -e --id OpenJS.NodeJS.LTS
}

if (-not (Get-Command lua -errorAction silentlyContinue)) {
  Write-Host "Error: Lua could not be found"
  Write-Host "Installing lua"
  winget install -e --id DEVCOM.Lua
}

if (-not (Get-Command nvim -errorAction silentlyContinue)) {
  Write-Host "Error: Neovim could not be found"
  Write-Host "Installing nvim"
  winget install -e --id Neovim.Neovim
}

if (-not (Test-Path $env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim -PathType Container)) {
  git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
}

if (-not (Test-Path $env:LOCALAPPDATA\nvim\lua\ -PathType Container)) {
  New-Item -Type Directory $env:LOCALAPPDATA\nvim\lua\
}

if (-not (Test-Path $env:LOCALAPPDATA\nvim\after\plugin\ -PathType Container)) {
  New-Item -Type Directory $env:LOCALAPPDATA\nvim\after\plugin\
}

Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\init.lua $env:LOCALAPPDATA\nvim\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\options.lua $env:LOCALAPPDATA\nvim\lua\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\plugins.lua $env:LOCALAPPDATA\nvim\lua\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\colors.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\remap.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\tree.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\tive.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\treesitter.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\undotree.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\zero.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\telescope.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\harpoon.lua $env:LOCALAPPDATA\nvim\after\plugin\
Copy-Item $env:HOMEPATH\.dotfiles\configs\neovim\comment.lua $env:LOCALAPPDATA\nvim\after\plugin\

if (-not (Test-Path $env:USERPROFILE\Documents\PowerShell\)) {
  New-Item -Type Directory $env:USERPROFILE\Documents\PowerShell\
}

Copy-Item $env:HOMEPATH\.dotfiles\configs\profiles\Microsoft.PowerShell_profile.ps1 $env:USERPROFILE\OneDrive\Documents\PowerShell\

Copy-Item $env:HOMEPATH\.dotfiles\configs\windows_terminal\terminal.json $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json 

if ((Get-ChildItem C:\Windows\Fonts\ | Out-String -Stream | Select-String -Pattern "Meslo").Count -eq 0) {
  if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process -Wait powershell -Verb runAs "oh-my-posh font install Meslo"
  } 
}

if (-not (Get-Command code -errorAction silentlyContinue)) {
  Write-Host "Error: Visual Studio Code could not be found"
  Write-Host "Installing code"
  winget install -e --id Microsoft.VisualStudioCode
}

if (-not (Test-Path $env:HOMEPATH\AppData\Roaming\Code\User\ -PathType Container)) {
  New-Item -Type Directory -Path $env:HOMEPATH\AppData\Roaming\Code\User\
}

Copy-Item $env:HOMEPATH\.dotfiles\configs\profiles\vscode.json $env:HOMEPATH\AppData\Roaming\Code\User\settings.json 

if (-not (Get-Command docker -errorAction silentlyContinue)) {
  Write-Host "Error: Docker could not be found"
  Write-Host "Installing docker-desktop"
  if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process -Wait powershell -Verb runAs "choco install docker-desktop -y"
  }
  wsl --update
}

if (-not (Get-Command gh -errorAction silentlyContinue)) {
  Write-Host "Error: GitHub CLI could not be found"
  Write-Host "Installing gh"
  winget install -e --id GitHub.cli
}

Write-Host "Completed Windows 11 install script"

