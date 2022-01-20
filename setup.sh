#!/bin/bash

ln -s `readlink -f init.vim` ~/.vimrc
ln -s `readlink -f vim` ~/.vim
git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac

