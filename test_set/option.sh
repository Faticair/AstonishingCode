#!/bin/bash

while [ -n "$1" ]
do
    case "$1" in
        -a) echo "option -a";;
        -b) echo "option -b";;
        --) shift
            break;;
        *) echo "not option"
    esac
    shift
done
    
