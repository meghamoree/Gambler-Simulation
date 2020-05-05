#!/bin/bash -x

stakesAmount=100
bet=1
playingGoal=150
resignLimit=50
totalAmount=0
monthDays=20

Value=$(( RANDOM%2 ))
if [ $Value -eq 1 ]
	then
		echo Win
	else
		echo Loss
fi

declare -A winCount
declare -A loseCount

function playForMonth()
{
        echo "Starting Game...For Month.."
        expectedGoalForMonth=$(($stakesAmount*$monthDays))

        for (( i=1; i<=$monthDays; i++ ))
	do
		stakeAmount=100

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
	done
                totalAmount=$(($totalAmount+$stakesAmount))
                echo $totalAmount

                if [[ $totalAmount -lt $expectedGoalForMonth ]]
                then
                                echo "Gambler Lose by $(($expectedGoalForMonth-$totalAmount))$"

                elif [[ $totalAmount -gt $expectedGoalForMonth ]]
                then
                                echo "Gambler Won by $(($totalAmount-$expectedGoalForMonth))$"
                                wantToPlay
                else
                                echo "Gambler Neither Won or Loose Neutral Achieved Goal"

	 fi

}

function wantToPlay()
{
        stakesAmount=100
        bet=1
        playingGoal=150
        resignLimit=50
        totalAmount=0
        monthDays=20
        echo

        read -p "Do You Want To Start Game Again Y/N" choic 
        if [[ $choice == y || $choice == Y ]]
        then
  playForMonth

        else
                        echo "Okay..Exiting..."
        fi
}
playForMonth
