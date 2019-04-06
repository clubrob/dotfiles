unsetopt BG_NICE

source ~/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle npm
antigen bundle vscode
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme avit
antigen apply

source z.sh

DEFAULT_USER=$(whoami)

HISTSIZE=5000
HISTFILESIZE=10000

alias up='sudo apt update && sudo apt dist-upgrade -y'
alias vz='vim ~/.zshrc'
alias src='source ~/.zshrc'
alias dev='cd /mnt/c/Users/rclin/dev-linux'
alias home='cd /mnt/c/Users/rclin'
alias lll='ls -l |less'
alias -g L='| less'
alias -g G='| grep'
alias druvm='ssh rlindsey@drupalizer'
alias c='code .'
alias killz='pkill zsh'

# npm aliases
alias crapp='npx create-react-app'
alias npmu="npx npm-check -u"
alias npmug="npx npm-check -ug"
alias npmlg='npm list -g --depth=0'

# Custom functions
mdcd () { mkdir "$@" && cd "$@" || exit; }

PATH=$(echo :$PATH: | sed -e 's,:/mnt/c/Program Files/nodejs:,:,g' -e 's/^://' -e 's/:$//')
PATH=$PATH:~/.npm-global/bin
