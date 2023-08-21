#!/bin/bash

# Check if leap year

function LeapYear(){
	NumberValidation="^[a-zA-Z]*$"
	
	read -p "Enter a year: " year
	
	if [[ $year =~ $NumberValidation ]]; then
		echo "Wrong input"
		exit
	#else
	#	echo number
	fi
	
	if [ $year -lt 1582 ]; then
		echo "Not within the Gregorian calendar period"
		exit
	#else
	#	echo success
	fi
	
	if [ $(($year%4)) != 0 ]; then
		echo "Common year"
	elif [ $(($year%100)) != 0 ]; then
		echo "Leap year"
	elif [ $(($year%400)) != 0 ]; then
		echo "Common year"
	else
		echo "Leap year"
	fi
}
