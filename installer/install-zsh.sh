#!/bin/bash
sudo apt update
sudo apt install zsh -y
# auto suggestions and highlighting
sudo apt install zsh-autosuggestions zsh-syntax-highlighting -y
# download extract
wget https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/extract/extract.plugin.zsh -O zsh-extract.zsh
sudo mkdir /usr/share/zsh-extract 
sudo cp zsh-extract.zsh /usr/share/zsh-extract
sudo usermod -s /bin/zsh $(whoami)
# lambda theme
# seems it can't
# sudo apt install zsh-theme-lambda -y

