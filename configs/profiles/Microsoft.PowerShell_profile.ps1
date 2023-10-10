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
Function Dotfiles-Help { Get-Content $PROFILE }
Set-Alias -Name dh -Value Dotfiles-Help
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
Function Git-Commit { git commit -m $args[0] }
Set-Alias -Name gct -Value Git-Commit
Function Git-Push { git push origin }
Set-Alias -Name gph -Value Git-Push
Function Git-Pull { git pull }
Set-Alias -Name gpl -Value Git-Pull
Function Git-Reset-Hard-Head { git reset --hard HEAD }
Set-Alias -Name grhh -Value Git-Reset-Hard-Head
Function Git-Reset-Hard { git reset --hard $args[0] }
Set-Alias -Name grh -Value Git-Reset-Hard
Function Git-Log { git log $args[0] }
Set-Alias -Name glg -Value Git-Log
Function Git-Diff { git diff $args[0] }
Set-Alias -Name gd -Value Git-Diff

Invoke-Expression (&starship init powershell)

