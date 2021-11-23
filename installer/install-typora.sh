#!/bin/bash
# download the latest beta version of typora
# wget https://download.typora.io/linux/typora_0.11.18_amd64.deb -O typora
# sudo apt-get install ./typora

# official method
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update

# install typora
sudo apt-get install typora=0.11.18-1 # install the lastest beta version
sudo apt-mark hold typora
