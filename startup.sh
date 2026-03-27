#!/bin/bash
set -ex
repo=$(dirname $0)

############################
###### shell config ########
cp $repo/bashrc ~/.bashrc
cp $repo/sh ~/.sh
cp $repo/zshrc ~/.zshrc

###### git config ##########
cp $repo/gitconfig ~/.gitconfig

############ vim ###########
cp $repo/vimrc ~/.vimrc

##### claude code ##########
[ -d ~/.claude ] || mkdir ~/.claude
cp claude.settings.json ~/.claude/settings.json
cp claude.statusline.py ~/.claude/statusline

