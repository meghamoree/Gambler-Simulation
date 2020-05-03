#!/bin/bash -x
 
read -p "Enter the a value: " a 
read -p "Enter the a value: " b 
read -p "Enter the a value: " c

declare -A UC  

result1=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))
result3=$(( $a + $b / $c ))
result4=$(( $a % $b + $c ))

UC[1]=$result1
UC[2]=$result2
UC[3]=$result3
UC[4]=$result4

echo "output in array is"

for ((i=1; i<=4; i++))
do
Usecase[$i]=${UC[$i]}
echo ${Usecase[$i]}
done

echo "output in dictionary is"
echo  "UseCases" ${UC[@]}
