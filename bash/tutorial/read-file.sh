#!/bin/bash

command="ls"
file="$command.txt"

man $command > $file

echo "File Printed... $file"
while read line; do
echo $line
done < $file

cat $file
tac $file

less $file
cat $file | less

more $file
cat $file | more

rm $file
echo "File Deleted... $file"
