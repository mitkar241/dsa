set sample "Where there is a will, There is a way."

#
# Match the first substring with lowercase letters only
#
set result [regexp {[a-z]+} $sample match]
puts "Result: $result match: $match"

#
# Match the first two words, the first one allows uppercase
set result [regexp {([A-Za-z]+) +([a-z]+)} $sample match sub1 sub2 ]
puts "Result: $result Match: $match 1: $sub1 2: $sub2"

#
# Replace a word
#
regsub "way" $sample "lawsuit" sample2
puts "New: $sample2"

#
# Use the -all option to count the number of "words"
#
puts "Number of words: [regexp -all {[^ ]+} $sample]"



set pattern  {(^|[ \t])([-+]?(\d+|\.\d+|\d+\.\d*))($|[^+-.])}
set examples {"1.0"    " .02"  "  +0."
              "1"      "+1"    " -0.0120"
              "+0000"  " - "   "+."
              "0001"   "0..2"  "++1"
              "A1.0B"  "A1"}
foreach e $examples {
    if { [regexp $pattern $e whole \
              char_before number digits_before_period] } {
        puts ">>$e<<: $number ($whole)"
    } else {
        puts ">>$e<<: Does not contain a valid number"
    }
}



#
# Examine an overview of UNIX/Linux disks
#
set list1 [list \
{/dev/wd0a        17086    10958     5272    68%    /}\
{/dev/wd0f       179824   127798    48428    73%    /news}\
{/dev/wd0h      1249244   967818   218962    82%    /usr}\
{/dev/wd0g        98190    32836    60444    35%    /var}]

foreach line $list1 {
    regexp {[^ ]* *([0-9]+)[^/]*(/[a-z]*)} $line match size mounted;
    puts "$mounted is $size blocks"
}


#
# Extracting a hexadecimal value ...
#
set line {Interrupt Vector?	[32(0x20)]}
regexp "\[^\t]+\t\\\[\[0-9]+\\(0x(\[0-9a-fA-F]+)\\)]" $line match hexval
puts "Hex Default is: 0x$hexval"

#
# Matching the special characters as if they were ordinary
#
set str2 "abc^def"
regexp "\[^a-f]*def" $str2 match
puts "using \[^a-f] the match is: $match"

regexp "\[a-f^]*def" $str2 match
puts "using \[a-f^] the match is: $match"

regsub {\^} $str2 " is followed by: " str3
puts "$str2 with the ^ substituted is: \"$str3\""

regsub "(\[a-f]+)\\^(\[a-f]+)" $str2 "\\2 follows \\1" str3
puts "$str2 is converted to \"$str3\""
