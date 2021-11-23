#!/bin/bash
mv ~/.gitconfig ~/.gitconfig.bak
ln -sr ./git/gitconfig.local.symlink ~/.gitconfig

mv ~/.vimrc ~/.vimrc.bak
ln -sr ./vim/vimrc ~/.vimrc
ln -sr ./vim/vim ~/.vim

# bash
ln -sr ./bash/bash_aliases ~/.bash_aliases

ln -sr ./PoshThemes ~/.poshthemes
