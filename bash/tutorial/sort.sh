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

sort $file

echo ""

sort -r $file

# -i : prompt before every removal
rm $file
echo "File Deleted... $file"
