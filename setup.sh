#!/bin/bash

if [ -z "$1" ]
then
    echo "Supply vim or nvim as argument!"
elif [ "$1" == vim ]
then
    echo "configuring for vim"
    ln -s `pwd`/init.vim ~/.vimrc
    ln -s `pwd`/vim/ ~/.vim
    git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac
elif [ "$1" == nvim ]
then
    echo "configuring for neovim"
    if [ ! -d $HOME/.config/ ]
    then
        mkdir $HOME/.config/
    fi
    if [ ! -d $HOME/.config/nvim ]
    then
        mkdir $HOME/.config/nvim
    fi
    ln -s `pwd`/init.vim ~/.config/nvim/init.vim
    ln -s `pwd`/vim/ftplugin ~/.config/nvim/ftplugin/
    git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
else
    echo "Supply vim or nvim as argument!"
fi
