#!/bin/bash
. ./mylib
# using "source ./mylib" also works

echo "5! is $( recursion 5 )"

arr=(1 2 3 4 5 6 7 8 9)
echo "Sum of (${arr[*]}) is $(arr_sum ${arr[*]})."
