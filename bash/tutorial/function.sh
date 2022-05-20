#!/bin/bash

function Factorial()
{
  local n=$1
  local fact=1
  while [ $n -gt 1 ]
  do
    fact=$((fact *  n))
    n=$((n - 1))
  done
  echo $fact
}

factorial()
{
  local n=$1
  local fact=1
  while [ $n -gt 1 ]
  do
    fact=$((fact *  n))
    n=$((n - 1))
  done
  echo $fact
}

echo -n "Enter Number: "
read n
Factorial $n
factorial $n
