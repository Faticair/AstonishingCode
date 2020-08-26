#!/bin/bash


# find all executable file in the specific path

read -p "Please input the path you want to search:" path
if [ -d $path ]
then
    IFSOLD=$IFS
    IFS=:
    for dir in $path
    do
        echo "The excutable file in your path are:"
        echo "$dir:"
        for file in $dir/*
        do
            if [ -x $file ]
            then
                echo "	$file"
            fi
        done
    done > xfile
elif [ -f $path ]
then
    echo -n "This is a file! "
    if [ -x $path ]
    then
        echo "But it is an excutable file."
    else
        echo "And not excutable."
    fi
else
    echo "The PATH you input is invalid."
fi
