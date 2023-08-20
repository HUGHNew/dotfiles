#!/bin/bash
set -ex
repo=$(dirname $0)

############################
###### shell config ########
cp $repo/bashrc ~/.bashrc
cp -r $repo/sh ~/.sh
cp $repo/zshrc ~/.zshrc

###### git config ##########
cp $repo/gitconfig ~/.gitconfig

############ vim ###########
cp $repo/vimrc ~/.vimrc
