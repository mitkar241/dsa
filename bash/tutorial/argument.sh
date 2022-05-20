#!/bin/bash

: '
bash argument.sh "Raktim Halder" raktim 24
'
echo "Total arguments : $#"
echo "All arguments : $@"
echo "Script Name : $0"
echo "Full Name: $1"
echo "Username: $2"
echo "Age: $3"

echo -n "Enter Your token : "
read token
echo "Your token is - $token"

