#!/bin/bash

filename=$1


if test $filename
then
    if [ -f $filename ]
    then
        echo 'file already exists.' >&2
        exit 1
    fi

    touch $filename
    echo 'create success!'
else
    echo 'NO filename!' >&2
    exit 1
fi

read -p 'The privilege [000-777, press enter as 666]:' mod
if test $mod
then
    chmod $mod './'$filename
else
    chmod 666 './'$filename
fi

