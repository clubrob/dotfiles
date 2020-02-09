function Open-Npm-List-Global { npm.cmd list -g --depth=0 }
function Open-Npm-Check-Update-Global { npx.cmd npm-check -ug }
function Open-Npm-Check-Update { npx.cmd npm-check -u }
function Open-Choco-Upgrade-All { choco.exe upgrade all -y }
function Open-Dotnet-Scaffold { dotnet-aspnet-codegenerator.exe @Args }
function Open-Docker-Compose-Up { docker-compose up -d }
function Open-Docker-Compose-Down { docker-compose down }
function Open-Parent-Directory { Set-Location .. }
function Open-Nix-Which($name) {
  Get-Command $name | Select-Object -ExpandProperty Definition
}

Set-Alias -Name .. -Value Open-Parent-Directory
Set-Alias -Name npmlg -Value Open-Npm-List-Global
Set-Alias -Name npmug -Value Open-Npm-Check-Update-Global
Set-Alias -Name npmu -Value Open-Npm-Check-Update
Set-Alias -Name chup -Value Open-Choco-Upgrade-All
Set-Alias -Name dnac -Value Open-Dotnet-Scaffold
Set-Alias -Name dcup -Value Open-Docker-Compose-Up
Set-Alias -Name ddown -Value Open-Docker-Compose-Down
Set-Alias -Name which -Value Open-Nix-Which

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
