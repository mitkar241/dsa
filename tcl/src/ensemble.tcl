lappend auto_path ../lib

package require tutstack 1.0
package require Tcl      8.6

namespace eval ::tutstack {
    # Create the ensemble command
    namespace ensemble create
}

# Now we can use our stack through the ensemble command
set stack [tutstack create]
foreach num {1 2 3 4 5} { tutstack push $stack $num }

while { ![tutstack empty $stack] } {
    puts "[tutstack pop $stack]"
}

tutstack destroy $stack
