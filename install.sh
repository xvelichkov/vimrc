#!/bin/bash

ln -s $PWD/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git $PWD/bundle/Vundle.vim

vim +PluginInstall +qall
