#!/bin/bash

alias Install="sudo apt install -y"

# bat
Install bat
sudo ln -s /usr/bin/batcat /usr/local/sbin/bat

# fzf
Install fzf

Install translate-shell
# for graphics paste/pin
Install flameshot
# for proxy
Install proxychains