# TODO: Not working
# https://docs.activestate.com/activetcl/8.6/get/linux/
# https://www.activestate.com/products/tcl/

# Attempt to load the thread package
if {[catch {package require Thread} err]} {
    puts "Error loading Thread package: $err"
    exit 1
}

# Create a simple procedure that we will run in a separate thread
proc threadTask {arg} {
    puts "Thread received argument: $arg"
    # Perform some task, here we just sleep for demonstration
    after 2000
    return "Result from thread with argument: $arg"
}

# Create a new thread and pass it the task
set threadId [thread::create {threadTask "Hello from the thread"}]

# Wait for the thread to complete and get the result
set result [thread::wait $threadId]

# Output the result from the thread
puts "Main thread received: $result"

# Clean up the thread
thread::release $threadId
