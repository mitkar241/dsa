set cmd "OK"
eval puts $cmd

set cmd "puts" ; lappend cmd {Also OK}; eval $cmd

set cmd "NOT OK"
eval puts $cmd

eval [format {%s "%s"} puts "Even This Works"]

set cmd "And even this can be made to work"

eval [format {%s "%s"} puts $cmd ]

set tmpFileNum 0;

set cmd {proc tempFileName }
lappend cmd ""  
lappend cmd "global num; incr num; return \"/tmp/TMP.[pid].\$num\""
eval  $cmd

puts "\nThis is the body of the proc definition:"
puts "[info body tempFileName]\n"

set cmd {puts "This is Cool!}

if {[info complete $cmd]} {
    eval $cmd
} else {
    puts "INCOMPLETE COMMAND: $cmd"
}
