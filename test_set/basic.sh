#!/bin/bash

echo \###### EXAMPLE ONE \######
echo use \'echo -n\' to make output stay with echo
echo -n EXP: The date is :
date 

echo \###### EXAMPLE TWO \######
echo Home destination is $HOME

echo \###### EXAMPLE THREE \######
var1=10
var2=20
var3=$var2-$var1
echo Custom var: var1=$var1, var2=$var2, var3=$var3 -\> Vars are saved as str
var4=$(expr $var2 / $var1)
echo Using \''$(expr $var2 / $var1)'\' to have mathmatic calculation. var4=$var4
var5=$[$var1 / $var4]
echo Using \''$[$var1 / $var4]'\' also works. var5=$var5
var6=$(echo "scale=4; $var1 / 3" | bc)
echo Using \'bc\' and tuple to calculate float number. var6=$var6

echo \###### EXAMPLE FOUR \######
command1=$(ls -F ..)
echo Command \''ls -F ..'\' shows: $command1
echo $?

