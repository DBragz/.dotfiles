<# .SYNOPSIS
	Windows profile settings
.DESCRIPTION
	My default Windows PowerShell settings.
.NOTES
	Author: Daniel Ribeirinha-Braga
  Name: Microsoft.PowerShell_profile.ps1
#>

Set-Alias -Name i -Value $env:HOMEPATH/.dotfiles/install.ps1
Set-Alias -Name u -Value $env:HOMEPATH/.dotfiles/uninstall.ps1
#Set-Alias -Name l -Value ls -la
#Set-Alias -Name e -Value exit
#Set-Alias -Name c -Value clear
Set-Alias -Name gs -Value git status
Set-Alias -Name ga -Value git add .
Set-Alias -Name gd -Value git diff
Set-Alias -Name gc -Value git commit -m $args[1]
Set-Alias -Name gpush -Value git push origin
Set-Alias -Name gpull -Value git pull

Invoke-Expression (&starship init powershell)

