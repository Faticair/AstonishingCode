#!/bin/bash


IFSOLD=$IFS
IFS=$'\n'
list="Shanghai
Beijing
Mc'Donald
New York"

for city in $list
do
    echo "This city is $city."
done
IFS=$IFSOLD


for file in $(ls)
do
    echo "This dir contains $file."
done


for f in /home/zahi/Software/*
do
    if [ -d $f ]
    then
        echo "$f is a dir."
    elif [ -f $f ]
    then
        echo "$f is a file."
    else
        echo "I don't know."
    fi
done


echo "C-style for"
for ((i = 1, j = 10; i <= 10; i++, j--))
do
    echo "Counting $i - $j"
done
