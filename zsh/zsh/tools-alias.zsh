#!/bin/bash

root=$(dirname $0)

troot=$root/tools
for tool in $(ls $troot)
do source $troot/$tool
done


alias sicp="rlwrap scheme"
alias pc=proxychains
alias ping=~/prettyping
alias cat=bat
alias ls=exa
alias ztc="sudo zerotier-cli"

alias gopy='cd ~/Code/Python'
