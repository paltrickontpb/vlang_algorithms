import os

fn main(){
    // Argument Passing Segment of Code
    mut args := 2 // Initializing a value
    if os.args.len > 1 {
        args = os.args[1].int() // Update initial value if args are passed
    } 
    num_forks := args // Pass argument to a named immutable variable (takes more space, but safer)

    // Common Variable Segment
    mut pid_addr_data := [0]

    // Multi Fork Segment
    mut i := 0
    mut pid := 0
    for i=0; i<num_forks-1; i+=1 {
        pid = os.fork()
        if pid == 0 {
            break
        } 
        else if pid>0{
            pid_addr_data << pid
        }
    }

    // Only print from Parent
    if pid>0{
        i = 0
        for addr in pid_addr_data{
            println('Process $i address: $addr')
            i++
        }
    }

}