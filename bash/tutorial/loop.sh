#!/bin/bash

: '
while [ condition ]; do commands; done
while control-command; do COMMANDS; done
'
echo -e "##########\n# WHILE LOOP\n##########\n"
n=5
i=0
while [ $i -le $n ]
do
  echo "printing... $i"
  ((i++))
done

: '
for i in {1..5}; do COMMAND-HERE; done
for((i=1;i<=10;i+=2)); do echo "iter : $i"; done
'
echo ""
echo -e "##########\n# FOR LOOP\n##########\n"
n=7
for (( i=1; i<=5; i++ ))
  do
    ((result= $n * $i))
    echo "$n x $i = $result"
done

