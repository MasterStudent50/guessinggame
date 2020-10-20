#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please, enter your guess: "
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is lesser than the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater than the true number"
        else
            echo "Congrats! You found it!"
        break;
        fi
    done
}
echo "Try to guess the number of files in the current directory..."
guess