#!/bin/bash

Value=$(( RANDOM%2 ))
if [ $Value -eq 1 ]
	then
		echo Head
	else
		echo Tails
fi
