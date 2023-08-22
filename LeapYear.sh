#!/bin/bash

# Check if leap year

function LeapYear(){
	NumberValidation="^[a-zA-Z]*$"
	#read -p "Enter a year: " year
 
	if [[ $1 =~ $NumberValidation ]]; then
		echo "Wrong input"
	#else
	#	echo number
	fi
	
	if [ $1 -lt 1582 ]; then
		echo "Not within the Gregorian calendar period"
		exit
	#else
	#	echo success
	fi
	
	if [ $(($1%4)) != 0 ]; then
		echo "Common year"
	elif [ $(($1%100)) != 0 ]; then
		echo "Leap year"
	elif [ $(($1%400)) != 0 ]; then
		echo "Common year"
	else
		echo "Leap year"
	fi
}
