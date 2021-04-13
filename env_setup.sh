#!/bin/bash

# Install everything in Brewfile
brew bundle

## Fuzzy Command Finder
## To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

## Set up oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Install NPM Packages 
npm install -g tldr      #tldr man pages

# Vim Specific
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# TMux Specific
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
