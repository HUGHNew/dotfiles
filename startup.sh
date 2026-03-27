#!/bin/bash
set -ex
repo=$(dirname $0)

############################
###### shell config ########
cp $repo/bashrc ~/.bashrc
cp $repo/zshrc ~/.zshrc
cp -r $repo/sh ~/.sh

###### git config ##########
cp $repo/gitconfig ~/.gitconfig

############ vim ###########
cp $repo/vimrc ~/.vimrc

##### claude code ##########
[ -d ~/.claude ] || mkdir ~/.claude
cp claude/user.settings.json ~/.claude/settings.json
cp claude/project.settings.json ~/.claude/settings.project.json
cp claude/statusline.py ~/.claude/statusline
cp claude/startup.sh ~/.claude/claude.startup

