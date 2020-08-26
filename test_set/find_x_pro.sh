#!/bin/bash

# using redirection
# find all executable file in the specific path

exec 3>&1
exec 0< paths_for_find

while read path
do
    if [ -d $path ]
    then
        exec 1>>xfile
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
        done
    elif [ -f $path ]
    then
        exec 1>&3
        echo -n "$path is a file! "
        if [ -x $path ]
        then
            echo "But it is an excutable file."
        else
            echo "And not excutable."
        fi
    else
        exec 1>&3
        echo "The PATH you input is invalid."
    fi
done
