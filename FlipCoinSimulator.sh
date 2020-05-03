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



#triplet

for (( i = 0; i < num; i++ ))
do
   randomCheck1=$((RANDOM%2))
   randomCheck2=$((RANDOM%2))
   randomCheck3=$((RANDOM%2))
   if (( $randomCheck1 == 0 && $randomCheck2 == 0 && $randomCheck3 == 0 ))
   then
       tripleDict[HHH]=$((${tripleDict[HHH]}+1))
   elif (( $randomCheck1 == 0 && $randomCheck2 == 0 && $randomCheck3 == 1 ))
   then
      tripleDict[HHT]=$((${tripleDict[HHT]}+1))
   elif (( $randomCheck1 == 0 && $randomCheck2 == 1 && $randomCheck3 == 0 ))
   then
      tripleDict[HTH]=$((${tripleDict[HTH]}+1))
   elif (( $randomCheck1 == 1 && $randomCheck2 == 0 && $randomCheck3 == 0 ))
        then
      tripleDict[THH]=$((${tripleDict[THH]}+1))
        elif (( $randomCheck1 == 1 && $randomCheck2 == 1 && $randomCheck3 == 1 ))
   then
      tripleDict[TTT]=$((${tripleDict[TTT]}+1))
   elif (( $randomCheck1 == 1 && $randomCheck2 == 1 && $randomCheck3 == 0 ))
   then
      tripleDict[TTH]=$((${tripleDict[TTH]}+1))
   elif (( $randomCheck1 == 1 && $randomCheck2 == 0 && $randomCheck3 == 1 ))
   then
      tripleDict[THT]=$((${tripleDict[THT]}+1))
   else
      tripleDict[HTT]=$((${tripleDict[HTT]}+1))
   fi

done

HHHpercent=$(( (${tripleDict[HHH]}*100)/$num ))
THHpercent=$(( (${tripleDict[THH]}*100)/$num ))
HHTpercent=$(( (${tripleDict[HHT]}*100)/$num ))
TTTpercent=$(( (${tripleDict[TTT]}*100)/$num ))
HTHpercent=$(( (${tripleDict[HTH]}*100)/$num ))
THTpercent=$(( (${tripleDict[THT]}*100)/$num ))
HTTpercent=$(( (${tripleDict[HTT]}*100)/$num ))

echo "HHH came "${doubleDict[HHH]}
echo "percentage of HHH is " $HHHpercent"%"
echo "THH came "${doubleDict[THH]}
echo "percentage of THH is " $THHpercent"%"
echo "HHT came "${doubleDict[HHT]}
echo "percentage of HHT is " $HHTpercent"%"
echo "TTT came "${doubleDict[TTT]}
echo "percentage of TTT is " $TTTpercent"%"
echo "HTH came "${doubleDict[HTH]}
echo "percentage of HTH is " $HTHpercent"%"
echo "THT came "${doubleDict[THT]}
echo "percentage of THT is " $THTpercent"%"
echo "HTT came "${doubleDict[HTT]}
echo "percentage of HTT is " $HTTpercent"%"





















































