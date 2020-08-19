#!/bin/bash


# find all executable file in the specific path

path='/home/zahi/Software/'
IFSOLD=$IFS
IFS=:
for dir in $path
do
    echo "$dir:"
    for file in $dir/*
    do
        if [ -x $file ]
        then
            echo "	$file"
        fi
    done
done > xfile
