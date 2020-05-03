#!/bin/bash

declare -A dict

echo "Welcome to flipCoin simulator "

read -p "Enter the number of times coin to be flipped " num

for(( i = 0; i < num; i++ ))
do
        checkRandom=$((RANDOM%2))
        if [ $checkRandom -eq 0 ]
         then
		echo H
                dict[heads]=$((${dict[heads]}+1))
                Hpercentage=$((${dict[heads]}*100/num))
         else

		echo T
                dict[tails]=$((${dict[tails]}+1))
                Tpercentage=$((${dict[tails]}*100/num))
          fi
done
echo HeadsCount is ${dict[heads]}
echo TailsCount is ${dict[tails]}
echo  "Singlet outcome is tail percent is $Tpercentage" "head percent is $Hpercentage"
