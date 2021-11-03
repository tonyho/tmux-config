#!/bin/bash

#s=`date +%s | sed -e "s/^.*\(.\)$/\1/"`
d=`date +%s`
s=${d: -1}
#Ref:
#   https://stackoverflow.com/questions/39136959/modulus-function-in-bash-shell-script
if ((s % 2 == 0)); then
    echo -n "❤"
else
    echo -n " "
fi
