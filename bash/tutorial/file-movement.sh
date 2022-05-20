#!/bin/bash

man cp > cp-cpy-0.txt
ls | grep cp-cpy-

cp -p cp-cpy-0.txt cp-cpy-1.txt
ls | grep cp-cpy-

# You will be prompted before overwriting to file.
cp -i cp-cpy-0.txt cp-cpy-1.txt
ls | grep cp-cpy-

rm cp-cpy-*.txt
ls | grep cp-cpy-


man mv > mv-cpy-0.txt
ls | grep mv-cpy-

cp -i mv-cpy-0.txt mv-cpy-1.txt
ls | grep mv-cpy-

# You will be prompted before overwriting to file.
mv -i mv-cpy-0.txt mv-cpy-1.txt
ls | grep mv-cpy-

rm mv-cpy-*.txt
ls | grep mv-cpy-
