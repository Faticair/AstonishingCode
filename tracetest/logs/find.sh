#!/bin/bash

inputfile=$1 #The origin file
outputfile=$2 #The source file
cat $inputfile | egrep -o "[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}" > $outputfile

for addr in $(cat $outputfile)
do
    if test -e $addr
    then 
        echo exist
    else
        touch $addr
    fi
    whois $addr | tail -n +8 | head -n -4 > './'$addr
done
