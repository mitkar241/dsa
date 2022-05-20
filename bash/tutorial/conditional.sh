#!/bin/bash

echo -n "Enter a number: "
read num

n=5
if [[ $num -gt $n ]]
then
  echo "$num is greater than $n."
elif [[ $num -eq $n ]]
then
  echo "$num is equal to $n."
else
  echo "$num is less than $n."
fi

remainder=$(expr $n % 2)
if [ $remainder -eq 0 ]; then
	echo "It is a Even Number"
else
	echo "It is an Odd Number"
fi

