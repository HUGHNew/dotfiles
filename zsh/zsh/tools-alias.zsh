#!/bin/bash

root=$(dirname $0)

troot=$root/tools
for tool in $(ls $troot)
do source $troot/$tool
done


alias sicp="rlwrap scheme"
alias pc=proxychains