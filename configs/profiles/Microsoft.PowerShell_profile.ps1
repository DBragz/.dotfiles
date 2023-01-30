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
Set-Alias -Name e -Value exit
Set-Alias -Name c -Value Clear-Host
Set-Alias -Name l -Value Get-ChildItem
Function git-status { git status }
Set-Alias -Name gs -Value git-status
Function git-add { git add . }
Set-Alias -Name ga -Value git-add
Function git-diff { git diff }
Set-Alias -Name gd -Value git-diff
Function git-commit { git commit -m $args[1] }
Set-Alias -Name gcommit -Value git-commit
Function git-push { git push origin }
Set-Alias -Name gpush -Value git-push
Function git-pull { git pull }
Set-Alias -Name gpull -Value git-pull

Invoke-Expression (&starship init powershell)

