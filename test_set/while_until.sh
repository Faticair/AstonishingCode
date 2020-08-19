#!/bin/bash

var=10
while (( $var + 10 > 15 ))
do
    echo "var is $var."
    var=$[ $var -1 ]
done >> result

var=20
until [ $var -eq 15 ]
do
    echo "var is $var."
    var=$[ $var - 1 ]
done >> result
