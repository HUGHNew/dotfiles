#!/bin/bash
# install dependency
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
# get MS GPG key
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# enable VSCode source repo
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# install VSCode  and can be easily upgrade
sudo apt install code
