#!/bin/bash
mv ~/.gitconfig ~/.gitconfig.bak
ln -sr ./git/gitconfig.local.symlink ~/.gitconfig

mv ~/.vimrc ~/.vimrc.bak
ln -sr ./vimrc ~/.vimrc
