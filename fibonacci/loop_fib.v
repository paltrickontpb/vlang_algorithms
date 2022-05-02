import os

fn main(){
        
    if os.args.len<2 {
        println('Need at least 1 argument')
        exit(-1)
    }

    println('Starting Fibonacci Program using Loops')

    n := os.args[1].int()
    mut x := i64(0)
    mut y := i64(1)

    for i := 0; i < n; i += 1 {
        x, y = y, x + y
    }

    println('Fibonacci output: $x')
}
