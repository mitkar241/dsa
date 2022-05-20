#!/bin/bash

file="country.txt"

cat > $file <<EOF
France
Brazil
USA
India
China
Portugal
EOF
echo "File Created... $file"

vi -R $file

vi $file

vim $file

nano $file

code $file

# -i : prompt before every removal
rm $file
echo "File Deleted... $file"
