if {[catch {package require Tcl 8.6}]} return

package ifneeded tutstack 1.0 [list source [file join $dir tutstack.tcl]]
