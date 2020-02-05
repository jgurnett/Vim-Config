#!/bin/bash

ln -s ~/.vim/vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c ":PlugInstall"
vim -c ":q"
vim -c ":q"
echo "Pluggins Installed"