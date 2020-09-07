#!/bin/bash

function func1 {
    read -p "Enter an value: " val
    echo $[ $val * 2 ]
}

res=$(func1)
echo -n 'After double val is: '
echo $res
