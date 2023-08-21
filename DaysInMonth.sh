#! /bin/bash
source LeapYear.sh
source monthValidation.sh
source yearValidation.sh


function totalDaysInMonth(){
    
    local year=0
    local month=0

    ##This array represents the months of the year, with each
    ##index being the month (jan is in index 0, etc.) and february
    ##in this array is just a place holder and we do not really check 
    ##the content of said index since we will use a function that checks
    ##whether its a leap year or not and print accordingly separately
    ##regardless of the content of index 1
    daysInMonths=(31 28 31 30 31 30 31 31 30 31 30 31)


    if [[ $3 != "flag" ]]
    then
        ##User enters year and month
        echo "Please enter year and month: "
        read year month
        validateYear $year
        validateMonth $month
    else
        validateYear $1
        validateMonth $2
    fi
   

    if [[ $month -eq 2  || $2 -eq 2 ]]
    then
        if [[ -z $1 ]]
        then 
            eval1="LeapYear $year"
        else
            eval1="LeapYear $1"
        fi

        if [[ $(eval $eval1) == "Common year" ]]
        then
            echo "28"
        elif [[ $(eval $eval1) == "Leap year" ]]
        then
            echo "29"
        fi
    elif [[ -z $2 ]]
    then
        echo ${daysInMonths[$(( month-1 ))]}
    else
        echo ${daysInMonths[$(( $2-1 ))]}
    fi
}
