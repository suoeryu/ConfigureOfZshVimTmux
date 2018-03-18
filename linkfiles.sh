#!/bin/sh

# Oh-my-zsh initial
if [ -L ~/.zshrc ]; then
    /bin/rm ~/.zshrc
fi
ln -sv `pwd`/zshrc ~/.zshrc

if [ -L ~/.oh-my-zsh ]; then
    /bin/rm ~/.oh-my-zsh
fi
ln -sv `pwd`/oh-my-zsh ~/.oh-my-zsh

if [ -L ~/.zsh_customization ]; then
    /bin/rm ~/.zsh_customization
fi
ln -sv `pwd`/zsh_customization ~/.zsh_customization

# Vim initial
if [ -L ~/.vimrc ]; then
    /bin/rm ~/.vimrc
fi
ln -sv `pwd`/vimrc ~/.vimrc

if [ -L ~/.vim ]; then
    /bin/rm ~/.vim
fi
ln -sv `pwd`/Vimdir ~/.vim

if [ -L ~/.ycm_extra_conf.py ]; then
    /bin/rm ~/.ycm_extra_conf.py
fi
ln -sv `pwd`/ycm_extra_conf.py ~/.ycm_extra_conf.py

# Tmux initial
if [ ! -d tmuxdir/plugins/tpm ]; then
    mkdir -pv tmuxdir/plugins
    git clone https://github.com/tmux-plugins/tpm tmuxdir/plugins/tpm
fi

if [ -L ~/.tmux ]; then
    /bin/rm ~/.tmux
fi
ln -sv `pwd`/tmuxdir ~/.tmux

if [ -L ~/.tmux.conf ]; then
    /bin/rm ~/.tmux.conf
fi
ln -sv `pwd`/tmux.conf ~/.tmux.conf

if [ -L ~/.latexmkrc ]; then
    /bin/rm ~/.latexmkrc
fi
ln -sv `pwd`/latexmkrc ~/.latexmkrc

if [ -L ~/.ideavimrc ]; then
    /bin/rm ~/.ideavimrc
fi
ln -sv `pwd`/ideavimrc ~/.ideavimrc

tic -o $HOME/.terminfo tmux.terminfo
tic -o $HOME/.terminfo tmux-256color.terminfo
tic -o $HOME/.terminfo xterm-256color.terminfo
