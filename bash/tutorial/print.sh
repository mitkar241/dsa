#!/bin/bash

echo "echo with newline \n and tab \t. default."
echo -n "echo with newline \n and tab \t. suppress trailing newline."
echo "<< no newline"
echo -e "echo with newline \n and tab \t. interpret escape characters."
echo -E "echo with newline \n and tab \t. don't interpret escape characters."

printf "Open issues: %s\nClosed issues: %s\n" "34" "65"
printf "Decimal: %d\nHex: %x\nOctal: %o\n" 100 100 100
printf "%20s %d\n" Mark 305
printf "%0*d" 10 5
printf "%.3f" 1.61803398
printf "%.*f" 3 1.61803398

echo ""
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

cat $file | wc -l

# -i : prompt before every removal
rm $file
echo "File Deleted... $file"
