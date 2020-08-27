#!/bin/bash

trap "echo ' This is a trap ' " SIGINT
trap "echo ' GOODBYE ' " EXIT

for (( i=1;i<10;i++ ))
do
    if [ $i -eq 5 ]
    then
        trap -- SIGINT
        trap "echo ' NEW trap ' " SIGINT
    fi
    sleep 1
done

