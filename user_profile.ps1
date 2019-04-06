function Open-Npm-List-Global { npm.cmd list -g --depth=0 }
function Open-Npm-Check-Update-Global { npx.cmd npm-check -ug }
function Open-Npm-Check-Update { npx.cmd npm-check -u }
function Open-Choco-Upgrade-All { choco.exe upgrade all -y }
function Open-Dotnet-Scaffold { dotnet-aspnet-codegenerator.exe @Args }
function Open-Ssh-Ubuntu-Vm { ssh.exe rlindsey@robuntu }

Set-Alias -Name npmlg -Value Open-Npm-List-Global
Set-Alias -Name npmug -Value Open-Npm-Check-Update-Global
Set-Alias -Name npmu -Value Open-Npm-Check-Update
Set-Alias -Name chup -Value Open-Choco-Upgrade-All
Set-Alias -Name dnac -Value Open-Dotnet-Scaffold
Set-Alias -Name robvm -Value Open-Ssh-Ubuntu-Vm

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-Module PSConsoleTheme
Import-Module posh-git
Import-Module oh-my-posh
Set-ConsoleTheme 'Classic Dark'
Set-Theme Avit
