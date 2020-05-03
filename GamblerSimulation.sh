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
