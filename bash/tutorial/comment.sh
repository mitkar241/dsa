#!/bin/bash

# single line comment

: '
multi line comment
method 1
mind the space ^^^
'

<<DESC
multi line comment
method 2
DESC

((sum=5+4))
# printing result 
echo "sum is $sum"

