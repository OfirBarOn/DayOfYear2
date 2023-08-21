#! /bin/bash

function validateYear(){
    if [[ $1 =~ ^[a-zA-Z]*+$ ]]
    then
        echo "Invalid year!"
        exit 1
    fi
}