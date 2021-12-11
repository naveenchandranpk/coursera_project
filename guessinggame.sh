#!/usr/bin/env bash

ls > filescount
var=$(cat filescount | wc -l)
function userentry {
        echo ' '
	echo "Guess the number of files in the current library"
	read entry
}

function editcheck {
	if [[ $entry =~ ^[0-9]+$ ]]
	then
            true
	else
	    echo "!!!Please enter a valid number!!!"
 	    userentry
            editcheck
	fi
}

userentry
editcheck

sw='Y'
while [[ $sw -eq 'Y' ]]
do
if [[ $var -eq $entry ]]
then
  echo " WINNER!!! You gueesed it right."  
  exit
elif [[ $entry -lt $var-5 ]]  
  then
    echo " Your Guess is too low. Better luck next time"
    userentry
    editcheck 
elif [[ $entry -gt $var+5 ]] 
  then 
    echo " Your Guess is too high. Better luck next time"
    userentry
    editcheck
else 
   echo " Your Guess is TOO close"
   userentry
   editcheck    
fi
done
