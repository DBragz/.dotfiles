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
Function Exit { exit }
Set-Alias -Name e -Value Exit
Set-Alias -Name c -Value Clear-Host
Set-Alias -Name l -Value Get-ChildItem
Function Git-Status { git status }
Set-Alias -Name gs -Value Git-Status
Function Git-Add { git add . }
Set-Alias -Name ga -Value Git-Add
Function Git-Diff { git diff }
Set-Alias -Name gd -Value Git-Diff
Function Git-Commit { git commit -m $args[1] }
Set-Alias -Name gcommit -Value Git-Commit
Function Git-Push { git push origin }
Set-Alias -Name gpush -Value Git-Push
Function Git-Pull { git pull }
Set-Alias -Name gpull -Value Git-Pull

Invoke-Expression (&starship init powershell)
