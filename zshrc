# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export TSHome='ACAD\suoeryu@ecs.fullerton.edu:~'

ZSH_CUSTOM=$HOME/.zsh_customization
ZSH_THEME="my-rkj-repos"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias rm='rmtrash'
# alias vi='mvim -g --remote-tab'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias tm="tmux attach -t Base || tmux new -s Base"

alias sshTitanServer='ssh ACAD\\suoeryu@ecs.fullerton.edu'

alias -s html=vim
alias -s rb=vim
alias -s py=vim
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

plugins=(
    colored-man-pages vi-mode osx extract z dotenv
    git vagrant docker docker-compose
    brew npm pip
    zsh-completions zsh-autosuggestions zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
autoload -U compinit && compinit

# export PATH=/usr/local/bin:$PATH:/Library/TeX/texbin
# export MANPATH="/usr/local/man:$MANPATH"
# export GOPATH=~/Documents/Library/Develop/Go

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='vim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

eval `/usr/libexec/path_helper -s`
eval $(thefuck --alias)
