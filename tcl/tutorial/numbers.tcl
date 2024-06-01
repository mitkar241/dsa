# Compute 1 million times 1 million
puts [expr {1000000*1000000}]

# Compute 1 million times 1 million
puts [expr {1000000*1000000.}]

# Compute 1.0e+300/1.0-300
puts [expr {1.0e300/1.0e-300}]

#
# Division
#
puts "1/2 is [expr {1/2}]"
puts "-1/2 is [expr {-1/2}]"
puts "1/2 is [expr {1./2}]"
puts "1/3 is [expr {1./3}]"
puts "1/3 is [expr {double(1)/3}]"


set tcl_precision 17  ;# One of Tcl's few magic variables:
                      ;# Show all decimals needed to exactly
                      ;# reproduce a particular number
puts "1/2 is [expr {1./2}]"
puts "1/3 is [expr {1./3}]"

set a [expr {1.0/3.0}]
puts "3*(1/3) is [expr {3.0*$a}]"

set b [expr {10.0/3.0}]
puts "3*(10/3) is [expr {3.0*$b}]"

set c [expr {10.0/3.0}]
set d [expr {2.0/3.0}]
puts "(10.0/3.0) / (2.0/3.0) is [expr {$c/$d}]"

set e [expr {1.0/10.0}]
puts "1.2 / 0.1 is [expr {1.2/$e}]"


#
# The wrong way
#
set number [expr {int(1.2/0.1)}]  ;# Force an integer -
                                  ;# accidentally number = 11

for { set i 0 } { $i <= $number } { incr i } {
   set x [expr {$i*0.1}]
}


#
# A right way - note the limit
#
set x     0.0
set delta 0.1
while { $x < 1.2+0.5*$delta } {
   set x [expr {$x + $delta}]
}


#
# Two different estimates of "pi" - on Windows 98
#
set pi1 [expr {4.0*atan(1.0)}]
set pi2 [expr {6.0*asin(0.5)}]
puts [expr {$pi1-$pi2}]
