import os

fn fib(n int) (int){
    if n <= 1{
        return n
    }
    return fib(n-1) + fib(n-2)
}

fn main(){
    println('Starting Fibonacci Program using Recursive Method')
    
    if os.args.len<2 {
        println('Need at least 1 argument')
        exit(-1)
    }

    output := fib(os.args[1].int())

    println('Recursive Fibonacci Output: $output')
}
