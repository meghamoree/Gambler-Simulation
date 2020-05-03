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

#doublet

declare -A doubleDict

for (( i = 0; i < num; i++ ))

do

   randomCheck1=$((RANDOM%2))
   randomCheck2=$((RANDOM%2))

   if (( $randomCheck1 == 0 && $randomCheck2 == 0 ))

   then

      doubleDict[HH]=$((${doubleDict[HH]}+1))

   elif (( $randomCheck1 == 0 && $randomCheck2 == 1 ))

   then

       doubleDict[HT]=$((${doubleDict[HT]}+1))

   elif (( $randomCheck1 == 1 && $randomCheck2 == 0 ))

   then
                doubleDict[TH]=$((${doubleDict[TH]}+1))
   else
                doubleDict[TT]=$((${doubleDict[TT]}+1))
    fi
done

echo "doublet answer is"

HHpercent=$(( (${doubleDict[HH]}*100)/$num ))
THpercent=$(( (${doubleDict[TH]}*100)/$num ))
HTpercent=$(( (${doubleDict[HT]}*100)/$num ))
TTpercent=$(( (${doubleDict[TT]}*100)/$num ))

echo "HH came "${doubleDict[HH]}
echo "percentage of HH is " $HHpercent"%"
echo "TH came "${doubleDict[TH]}
echo "percentage of TH is " $THpercent"%"
echo "HT came "${doubleDict[HT]}
echo "percentage of HT is " $HTpercent"%"
echo "TT came "${doubleDict[TT]}
echo "percentage of TT is " $TTpercent"%"
