#!/bin/bash

script=$( basename $0 )
echo "You are now running $script."

res=1
for (( i=$1 ; i<=$2 ; i++ ))
do
    res=$[ $res * $i ]
done

echo -n "There are $# inputs"
for j in $@
do
    echo -n ", $j"
done
echo "."

echo "The last parameter is ${!#}."
echo "res is $res."

while [ -n "$2" ]
do
    echo "Before using shift, \$1 is $1."
    shift
    echo "Then, it is $1."
    shift 2
    echo "shift twice, it is $1."
done
