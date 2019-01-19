# Use this file to run your own startup commands

## Prompt Customization
<#
.SYNTAX
    <PrePrompt><CMDER DEFAULT>
    λ <PostPrompt> <repl input>
.EXAMPLE
    <PrePrompt>N:\Documents\src\cmder [master]
    λ <PostPrompt> |
#>

[ScriptBlock]$PrePrompt = {

}

# Replace the cmder prompt entirely with this.
# [ScriptBlock]$CmderPrompt = {}

[ScriptBlock]$PostPrompt = {

}

## <Continue to add your own>
function Npm-List-Global {npm list -g --depth=0}
function Npm-Check-Update {npx npm-check -ug}
function Choco-Upgrade-All {choco upgrade all -y}

Set-Alias -Name npmlg -Value Npm-List-Global
Set-Alias -Name npmug -Value Npm-Check-Update
Set-Alias -Name chup -Value Choco-Upgrade-All