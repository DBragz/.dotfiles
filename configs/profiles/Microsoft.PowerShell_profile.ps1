<# .SYNOPSIS
  Windows profile settings
.DESCRIPTION
  My default Windows PowerShell settings.
.NOTES
  Name:   Microsoft.PowerShell_profile.ps1
  Author: Daniel Ribeirinha-Braga
#>

Set-Alias -Name h -Value help
Set-Alias -Name l -Value Get-ChildItem
Set-Alias -Name c -Value Clear-Host

Function Exit { exit }
Set-Alias -Name e -Value Exit

Set-Alias -Name i -Value $env:HOMEPATH/.dotfiles/install.ps1
Set-Alias -Name u -Value $env:HOMEPATH/.dotfiles/uninstall.ps1

Function Read-Dotfiles-Help { bat $PROFILE }
Set-Alias -Name dh -Value Read-Dotfiles-Help

Function Invoke-Git-Init { git init }
Set-Alias -Name gini -Value Invoke-Git-Init

Function Invoke-Git-Status { git status }
Set-Alias -Name gs -Value Invoke-Git-Status

Function Invoke-Git-Add { git add . }
Set-Alias -Name ga -Value Invoke-Git-Add

Function Invoke-Git-Diff { git diff }
Set-Alias -Name gd -Value Invoke-Git-Diff

Function Invoke-Git-Commit { git commit -m $args[0] }
Set-Alias -Name gco -Value Invoke-Git-Commit

Function Invoke-Git-Push { git push origin }
Set-Alias -Name gpus -Value Invoke-Git-Push

Function Invoke-Git-Pull { git pull }
Set-Alias -Name gpul -Value Invoke-Git-Pull

Function Invoke-Git-Reset-Hard-Head { git reset --hard HEAD }
Set-Alias -Name grhh -Value Invoke-Git-Reset-Hard-Head

Function Invoke-Git-Reset-Hard { git reset --hard $args[0] }
Set-Alias -Name grh -Value Invoke-Git-Reset-Hard

Function Invoke-Git-Log { git log $args[0] }
Set-Alias -Name glo -Value Invoke-Git-Log

Function Invoke-Git-Diff { git diff }
Set-Alias -Name gd -Value Invoke-Git-Diff

Function Invoke-Git-Fetch { git fetch }
Set-Alias -Name gf -Value Invoke-Git-Fetch

Invoke-Expression (&starship init powershell)

