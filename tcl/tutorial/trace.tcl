proc traceproc {variableName arrayElement operation} {
    set op(write) Write
    set op(unset) Unset
    set op(read) Read

    set level [info level]
    incr level -1
    if {$level > 0} {
	set procid [info level $level]
    } else {
	set procid "main"
    }

    if {![string match $arrayElement ""]} {
	puts "TRACE: $op($operation) $variableName($arrayElement) in $procid"
    } else {
	puts "TRACE: $op($operation) $variableName in $procid"
    }
}

proc testProc {input1 input2} {
    upvar $input1 i
    upvar $input2 j

    set i 2
    set k $j
}

trace add variable i1 write traceproc
trace add variable i2 read traceproc
trace add variable i2 write traceproc

set i2 "testvalue"

puts "\ncall testProc"
testProc i1 i2

puts "\nTraces on i1: [trace info variable i1]"
puts "Traces on i2: [trace info variable i2]\n"

trace remove variable i2 read traceproc
puts "Traces on i2 after vdelete: [trace info variable i2]"

puts "\ncall testProc again"
testProc i1 i2
