#!/bin/bash

ln -s ~/vimrc/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/vimrc/bundle/Vundle.vim

vim +PluginInstall +qall
