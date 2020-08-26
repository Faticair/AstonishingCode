#!/bin/bash

outfile='data.sql'
IFS=','
while read name city address number
do
    cat >> $outfile << EOF
    INSERT INTO members (name,city,address,number) VALUES ('$name','$city','$address','$number');
    EOF
done < ${1}

