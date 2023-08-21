#!/bin/bash
source DaysInMonth.sh

echo "Please enter year, month and day: "
read  year month day
sum=0
temp=0

if [[ month -eq 1 ]]
then
    echo "$day"
    exit
fi

for (( i=1; i<=$month; i++ ))
do
    let sum=$sum+$(totalDaysInMonth $year $i flag)
done
echo $sum
sum=$(( $sum+$day ))
echo $sum