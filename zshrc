# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh_customization

export TSHome='ACAD\suoeryu@ecs.fullerton.edu:~'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="bureau"
#ZSH_THEME="agnoster"
ZSH_THEME="my-rkj-repos"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias rm='rmtrash'
alias vi='mvim -g --remote-tab'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias tm="tmux attach -t Base || tmux new -s Base"

alias sshTitanServer='ssh ACAD\\suoeryu@ecs.fullerton.edu'

alias -s html=vim	# 在命令行直接输入后缀为 html 的文件名，会在 MacVim 中打开
# alias -s rb=vim	# 在命令行直接输入 ruby 文件，会在 MacVim 中打开
# alias -s py=vim	# 在命令行直接输入 python 文件，会用 MacVim 中打开，以下类似
alias -s js=vim
alias -s c=vim
alias -s java=vim
alias -s go=vim
alias -s txt=vim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(
    colored-man-pages colorize compleat vi-mode     # Productivity
    git vagrant                                     # Build tools
    npm vundle                                            # Node.js
    pip                                             # Python
    brew osx                                        # MacOS
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=/usr/local/bin:$PATH:/Library/TeX/texbin
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
