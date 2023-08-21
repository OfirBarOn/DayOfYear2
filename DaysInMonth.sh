#! /bin/bash
source LeapYear.sh
source monthValidation.sh
source yearValidation.sh


function totalDaysInMonth(){
    
    ##This array represents the months of the year, with each
    ##index being the month (jan is in index 0, etc.) and february
    ##in this array is just a place holder and we do not really check 
    ##the content of said index since we will use a function that checks
    ##whether its a leap year or not and print accordingly separately
    ##regardless of the content of index 1
    daysInMonths=(31 28 31 30 31 30 31 31 30 31 30 31)

    ##User enters year and month
    read -p ("Please enter year and month: ") year month

    validateYear $year
    validateMonth $month

    if [[ $month -eq 2 ]]
    then
        if [[ LeapYear $year == "Common year" ]]
        then
            echo "28"
        elif [[ LeapYear $year == "Leap year" ]]
        then
            echo "29"
    else
        echo ${daysInMonths[$month-1]}
}
