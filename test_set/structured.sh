#!/bin/bash

# if command; then
#
# elif command
# then
#
# else
#
# fi

# my_var="MY"
var=1
if cd; then
    echo "if support command"
elif test $my_var
then
    echo my_var is True. \(using test to test\)
elif [ $[$var + 1] -gt 3 ]
then
    echo using [] to test condition
else
    echo THE END
fi

echo $USER
case $USER in
zahi)
    echo "Welcome, $USER!";;
root)
    echo "Hey, Master!";;
*)
    echo "Who are U?";;
esac

var1=10
var2=20

case $[$var2 / $var1] in
2)
    echo "var2 devide var1 is 2!";;
1)
    echo "var2 devide var1 is 1!";;
*)
    echo "How can this happened?";;
esac
     
