#!/bin/bash

############################
######### dotbot ###########
if ! pip install dotbot;then
    sudo apt install python3
    pip install dotbot
fi
./install
############################

for to_install in $(ls ./installer)
do bash ./installer/$to_install
done