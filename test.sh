#! /bin/bash

function potato(){
    echo $1 + potatop
}

function forTest(){
    nice=10
    for i in {1..$nice
    do
        echo $nice
    done
}

temp= potato 4
echo $temp
