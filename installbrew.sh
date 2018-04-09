#!/bin/sh

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install zsh;
brew install reattach-to-user-namespace
brew install tmux

brew install python3;
pip3 install --upgrade autopep8;
brew install npm
npm install -g js-beautify
brew install astyle

brew install cmake;
bres install ctags;
# brew install ack
brew install the_silver_searcher;
brew install vim --with-lua --with-python3 --with-override-system-vi

brew install rename
brew install rmtrash;

brew install imagemagick
brew install mpv

brew install go gotag
