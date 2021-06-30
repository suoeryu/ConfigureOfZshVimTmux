# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.zsh_customization
ZSH_THEME="my-rkj-repos"

plugins=(
    vi-mode osx z dotenv jump
    zsh-completions zsh-autosuggestions zsh-syntax-highlighting
    git colored-man-pages
    vagrant docker docker-compose
    brew npm pip golang
)

source $ZSH/oh-my-zsh.sh

# User configuration
autoload -U compinit && compinit

eval `/usr/libexec/path_helper -s`
# eval $(thefuck --alias)
# export MANPATH="/usr/local/man:$MANPATH"

# Go Settings
export GOPATH=~/.go
export PATH=$PATH:$GOPATH/bin
# Enable the go modules feature
export GO111MODULE=on
# Set the GOPROXY environment variable
export GOPROXY=https://goproxy.io

# pyenv settings
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# if command -v pyenv 1>/dev/null 2>&1; then
#     eval "$(pyenv init -)"
# fi

# nvm settings
# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
# alias rm='rmtrash'
# alias vi='mvim -g --remote-tab'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
# alias tm="tmux -CC attach || tmux -CC"
alias tm="tmux attach -t Base || tmux new -s Base"
# alias tm="tmux attach -t Base"

alias -s html=vim
# alias -s rb=vim
# alias -s py=vim
alias -s js=vim
alias -s c=vim
alias -s java=vim
alias -s go=vim
alias -s txt=vim

alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s mp4='mpv'
alias -s MP4='mpv'
alias -s avi='mpv'
alias -s AVI='mpv'
alias -s pdf='open'

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh