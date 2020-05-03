#!/bin/bash -x
stakesAmount=100
bet=1
Value=$(( RANDOM%2 ))

if [ $Value -eq 1 ]
	then
		echo Win
	else
		echo Loss
fi
 while [[ $stakesAmount -gt $resignLimit && $stakesAmount -lt $playingGoal ]]
                do
                        if [[ $((RANDOM%2)) -eq 1 ]]
                        then
                                stakesAmount=$(($stakesAmount+$bet))
                                        winCount[$i]=$((${winCount[$i]}+1))
                        else
                                stakesAmount=$(($stakesAmount-$bet))
                                        loseCount[$i]=$((${loseCount[$i]}+1))
                        fi
               done

		if [ $stakesAmount -ge 150 ]
		then
			echo "U have won 50% of stake,u should resign for the day "
			echo "Stake after winning is "$stake
		else
			echo "U have lost 50% of stake,u should resign for the day "
			echo "Stake after loosing in "$stake

		fi

