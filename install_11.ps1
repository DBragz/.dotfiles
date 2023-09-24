<# .SYNOPSIS
  Windows 11 environment initialization
.DESCRIPTION
  Installation script for my Windows 11 environment.
.NOTES
  Author: Daniel Ribeirinha-Braga
  Name: install_11.ps1
#>

Write-Host "Running Windows 11 install script"

if (-not (Test-Path $env:LOCALAPPDATA\clink -PathType Container)) {
  New-Item -Type Directory $env:LOCALAPPDATA\clink
}

if (-not (Test-Path $env:LOCALAPPDATA\nvim\lua\ -PathType Container)) {
  New-Item -Type Directory $env:LOCALAPPDATA\nvim\lua\
}

if (-not (Test-Path $env:LOCALAPPDATA\nvim\after\plugin\ -PathType Container)) {
  New-Item -Type Directory $env:LOCALAPPDATA\nvim\after\plugin\
}

if (-not (Test-Path $PROFILE -PathType Leaf)) {
  New-Item -Type File $PROFILE -Force
}

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

Copy-Item $env:HOMEPATH\.dotfiles\configs\lua\starship.lua $env:LOCALAPPDATA\clink\

Copy-Item $env:HOMEPATH\.dotfiles\configs\json\terminal.json $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json 

Copy-Item $env:HOMEPATH\.dotfiles\configs\profiles\Microsoft.PowerShell_profile.ps1 $PROFILE

New-Item -Type Directory -Path $env:HOMEPATH\AppData\Roaming\Code\User\
cp $env:HOMEPATH\.dotfiles\configs\json\vscode.json $env:HOMEPATH\AppData\Roaming\Code\User\settings.json 

if (-not (Get-Command scoop -errorAction SilentlyContinue)) {
  Write-Host "Error: Scoop could not be found"
  Write-Host "Installing scoop"
  Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
  scoop bucket add main
  scoop bucket add extras
}

if (-not (Get-Command clink -errorAction SilentContinue)) {
  Write-Host "Error: Clink could not be found"
  Write-Host "Installing clink"
  scoop install clink
}

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

if (-not (Test-Path $env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim -PathType Container)) {
  git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
}

if (-not (Get-Command code -errorAction silentlyContinue)) {
  Write-Host "Error: Visual Studio code could not be found"
  Write-Host "Installing vscode"
  scoop install vscode
}

if (-not (Get-Command java -errorAction silentlyContinue)) {
  Write-Host "Error: Java could not be found"
  Write-Host "Installing openjdk"
  scoop bucket add java
  scoop install openjdk
}

if (-not (Get-Command node -errorAction silentlyContinue)) {
  Write-Host "Error: Node.js could not be found"
  Write-Host "Installing node"
  scoop install nodejs-lts
}

if (-not (Get-Command lua -errorAction silentlyContinue)) {
  Write-Host "Error: Lua could not be found"
  Write-Host "Installing lua"
  scoop install lua 
}

if (-not (Get-Command gcc -errorAction silentlyContinue)) {
  Write-Host "Error: GNU Compiler Collection could not be found"
  Write-Host "Installing gcc"
  scoop install gcc
}

if ((Get-ChildItem $env:LOCALAPPDATA\Microsoft\Windows\Fonts\ | Out-String -Stream | Select-String -Pattern "Meslo").Count -eq 0) {
  oh-my-posh font install Meslo --user
}

Write-Host "Completed Windows install script"

