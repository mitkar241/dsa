# Package
---

## Create the pkgIndex.tcl File

Next, create a pkgIndex.tcl file that tells Tcl how to load your package. The pkg_mkIndex command is used to create this file.

### Manual Creation

You can manually create the pkgIndex.tcl file with the following content:

```
if {[catch {package require Tcl 8.4}]} return

package ifneeded myPackage 1.0 [list source [file join $dir myPackage.tcl]]
```

In this example:

- `package ifneeded myPackage 1.0` indicates that this file provides version 1.0 of myPackage.
- `[list source [file join $dir myPackage.tcl]]` specifies the command to load the package (in this case, sourcing the myPackage.tcl file).

### Automatic Creation

Alternatively, you can use the pkg_mkIndex command to generate the pkgIndex.tcl file automatically. Navigate to the directory containing your package and run the following command in the Tcl shell:

```
pkg_mkIndex . *.tcl
```

This command scans all .tcl files in the current directory and generates a pkgIndex.tcl file.
