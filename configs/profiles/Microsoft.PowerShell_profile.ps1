<# .SYNOPSIS
  Windows profile settings
.DESCRIPTION
  My default Windows PowerShell settings.
.NOTES
  Name:   Microsoft.PowerShell_profile.ps1
  Author: Daniel Ribeirinha-Braga
#>

Set-Alias -Name h -Value help
Function Dotfiles-Help { bat $PROFILE }
Set-Alias -Name dh -Value Dotfiles-Help
Set-Alias -Name i -Value $env:HOMEPATH/.dotfiles/install.ps1
Set-Alias -Name u -Value $env:HOMEPATH/.dotfiles/uninstall.ps1
Function Exit { exit }
Set-Alias -Name e -Value Exit
Set-Alias -Name c -Value Clear-Host
Set-Alias -Name l -Value Get-ChildItem
Function Git-Init { git init }
Set-Alias -Name gini -Value Git-Init
Function Git-Status { git status }
Set-Alias -Name gs -Value Git-Status
Function Git-Add { git add . }
Set-Alias -Name ga -Value Git-Add
Function Git-Diff { git diff }
Set-Alias -Name gd -Value Git-Diff
Function Git-Commit { git commit -m $args[0] }
Set-Alias -Name gco -Value Git-Commit
Function Git-Push { git push origin }
Set-Alias -Name gpus -Value Git-Push
Function Git-Pull { git pull }
Set-Alias -Name gpul -Value Git-Pull
Function Git-Reset-Hard-Head { git reset --hard HEAD }
Set-Alias -Name grhh -Value Git-Reset-Hard-Head
Function Git-Reset-Hard { git reset --hard $args[0] }
Set-Alias -Name grh -Value Git-Reset-Hard
Function Git-Log { git log $args[0] }
Set-Alias -Name glo -Value Git-Log

Invoke-Expression (&starship init powershell)

