#!/bin/bash

echo -e "##########\n# LENGTH OF STRING\n##########\n"
string1="mitkar"
string2="io"
Str=$string1.$string2
echo "Length of string '$Str' is: ${#Str}"

echo ""
echo -e "##########\n# SLICE OF STRING\n##########\n"
Str="Welcome to the mitkar.io"
# Extracting string from index 15
echo ${Str:15} 
# Extracting string from index 15 of length 5
echo ${Str:15:6}

echo ""
echo -e "##########\n# REPLACE SUBSTRING\n##########\n"
Str="Protocol used for http://mitkar.io is http"
# Finding and Replacing First match only
echo ${Str/http/https}
# Finding and Replacing all matches
echo ${Str//http/https}

