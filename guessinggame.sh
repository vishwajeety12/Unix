#!/usr/bin/env bash
# File: guessinggame.sh
#Function
function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    # Loop
    while true;
    do
        echo "Guess the number of directories-"
        # User response
        read  number
	# If-then statement
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is Less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is Greater then the true number"
        else
            echo " Congratulation,you are right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess
