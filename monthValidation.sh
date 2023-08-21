#! /bin/bash

function validateMonth(){
    if [[ $1 =~ ^[a-zA-Z]*+$ ]]
    then
        if [[ $1 -lt 1 || $1 -gt 12 ]]
        then
            echo "Invalid month!"
            exit 1
        fi
    fi
}