#!/bin/bash -x 
read -p "Enter the a value: " a 
read -p "Enter the a value: " b 
read -p "Enter the a value: " c 

UC2=$(( $a + $b * $c ))
UC3=$(( $a * $b + $c ))
UC4=$(( $a + $b / $c )) 

echo $UC2
echo $UC3
echo $UC4
