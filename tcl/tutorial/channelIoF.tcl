proc serverOpen {channel addr port} {
    puts "channel: $channel - from Address: $addr  Port: $port"
    puts "The default state for blocking is: [fconfigure $channel -blocking]"
    puts "The default buffer size is: [fconfigure $channel -buffersize ]"

    # Set this channel to be non-blocking.
    fconfigure $channel -blocking 0
    set bl [fconfigure $channel -blocking]
    puts "After fconfigure the state for blocking is: $bl"
  
    # Change the buffer size to be smaller
    fconfigure $channel -buffersize 12
    puts "After Fconfigure buffer size is: [fconfigure $channel -buffersize ]\n"

    # When input is available, read it.
    fileevent $channel readable "readLine Server $channel"
}

proc readLine {who channel} {
    global didRead
    global blocked

    puts "There is input for $who on $channel"

    set len [gets $channel line]
    set blocked [fblocked $channel]
    puts "Characters Read: $len  Fblocked: $blocked"

    if {$len < 0} {
        if {$blocked} {
            puts "Input is blocked"
        } else {
            puts "The socket was closed - closing my end"
            close $channel;
        }
    } else {
        puts "Read $len characters:  $line"
        puts $channel "This is a return"
        flush $channel;
    }
    incr didRead;
}

set server [socket -server serverOpen 33000]

after 120 update;	# This kicks MS-Windows machines for this application

set sock [socket 127.0.0.1 33000]

set bl [fconfigure $sock -blocking] 
set bu [fconfigure $sock -buffersize]
puts "Original setting for sock: Sock blocking: $bl buffersize: $bu"

fconfigure $sock -blocking No
fconfigure $sock -buffersize 8;

set bl [fconfigure $sock -blocking] 
set bu [fconfigure $sock -buffersize]
puts "Modified setting for sock: Sock blocking: $bl buffersize: $bu\n"

# Send a line to the server -- NOTE flush

set didRead 0
puts -nonewline $sock "A Test Line"
flush $sock;

# Loop until two reads have been done.

while {$didRead < 2} {
    # Wait for didRead to be set
    vwait didRead
    if {$blocked} {
        puts $sock "Newline"
        flush $sock
        puts "SEND NEWLINE"
    }
}
  
set len [gets $sock line]
puts "Return line: $len -- $line"
close $sock
vwait didRead
catch {close $server}
