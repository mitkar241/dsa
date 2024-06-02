if {[catch {package require Tcl 8.6}]} return

package ifneeded custPkg 1.0 [list source [file join $dir custPkg.tcl]]
package ifneeded tutstack 1.0 [list source [file join $dir tutstack.tcl]]
