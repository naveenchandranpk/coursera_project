#!/usr/bin/env bash

ls > filescount
cnt=$(wc -l filescount)
var="${cnt:0:2}"
echo "$cnt" 
echo "$var"
echo "Enter your files count guess below"
read entry

if [[ $var -eq $entry ]]
then
  echo " WINNER!!! You gueesed it right."  
elif [[ $entry -lt $var-10 ]]  
  then
    echo " Your Guess is too low. Better luck next time"
elif [[ $entry -gt $var+20 ]] 
  then 
    echo " Your Guess is too high. Better luck next time"
fi
echo "final"
