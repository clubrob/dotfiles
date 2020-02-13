unsetopt BG_NICE

source ~/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle npm
antigen bundle vscode
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle z
antigen theme avit
antigen apply

DEFAULT_USER=$(whoami)

HISTSIZE=5000
HISTFILESIZE=10000

alias up='sudo apt update && sudo apt dist-upgrade -y'
alias vz='vim ~/.zshrc'
alias src='exec zsh'
alias dev='cd ~/dev'
alias lll='ls -l |less'
alias -g L='| less'
alias -g G='| grep'
alias c='code .'
alias killz='pkill zsh'
alias e='explorer.exe .'

# Custom functions
mdcd () { mkdir "$@" && cd "$@" || exit; }

PATH=$(echo :$PATH: | sed -e 's,:/mnt/c/Program Files/nodejs:,:,g' -e 's/^://' -e 's/:$//')
PATH=~/.npm-global/bin:$PATH
PATH=$PATH:~/.local/bin

export BROWSER='/mnt/c/Windows/explorer.exe'
