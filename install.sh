#!/bin/bash

ln -s $PWD ~/.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/.vim/vimrc ~/.vimrc

echo "Installation finished. Open vim and execute :PluginInstall"

