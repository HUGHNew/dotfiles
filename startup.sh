#!/bin/bash
set -ex
repo=$(dirname $0)

############################
###### shell config ########
cp $repo/bashrc ~/.bashrc
cp $repo/bash ~/.bash

###### git config ##########
cp $repo/gitconfig ~/.gitconfig

############ vim ###########
cp $repo/vimrc ~/.vimrc

cp $repo/inputrc ~/.inputrc # search history
