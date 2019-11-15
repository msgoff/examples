open Core

let rec fib i =
    if i <= 1 then 1 else 
        fib (i - 1) + fib (i - 2);;

let arg = int_of_string Sys.argv.(1)
let fib_val = fib arg;;


print_int fib_val ;;

Out_channel.output_char stdout '\n';
