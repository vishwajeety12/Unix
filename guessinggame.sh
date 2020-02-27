#!/usr/bin/env bash
# File: guessinggame.sh
#Function
function guess(){
    ans=$(ls -l |grep "^-"|wc -l)
    # Loop
    while true;
    do
        echo "Guess the number-"
        # User response
        read  num
	# If-then statement
        if [ $num -lt $ans ]
        then
            echo "Your guess is Less then the current number of directory!"
        elif [ $num -gt $ans ]
        then
            echo "Your guess is Greater then the current number of directory!"
        else
            echo " Congratulation, Your guess is Equal to the current number of directory!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess
