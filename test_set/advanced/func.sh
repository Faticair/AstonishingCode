#!/bin/bash

function func1 {
    read -p "Enter an value: " val
    echo $[ $val * 2 ]
}

function func2 {
    echo $[ $1 + $2 ]
}

function func3 {
    local res=$[ $res / 2 ]
    echo $res
}

function func4 {
    local array=($@)
    #local sum=0
    for (( i=0 ; i<${#array[*]} ; i++ ))
    do
        #sum=$[ $sum + ${array[$i]} ]
        tmparr[$i]=$[ ${array[$i]} + 1 ]
    done
    #echo $sum
    echo ${tmparr[*]}
}

#res=$(func1)
#echo -n 'After double val is: '
#echo $res

#echo $(func2 $res 10)

#echo "Local value is:" $(func3)
#echo "Global value is: "$res

arr=(2 4 6 8)
echo ${arr[*]}

result=$(func4 ${arr[*]})
echo ${result[*]}

