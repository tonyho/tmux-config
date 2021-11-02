#!/bin/bash
#count=0
#date +%s
#${string: -n}

s=`date +%s | sed -e "s/^.*\(.\)$/\1/"`

if ((s % 2 == 0)); then
    echo -n "❤"
fi
