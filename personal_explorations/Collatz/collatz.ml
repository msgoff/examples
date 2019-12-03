open Core

let rec collatz n lst  = 
        match n with 
                1 -> []
                | _ -> if n mod 2  = 0 then n/2 :: collatz (n/2) lst  else 3*n+1 :: collatz ( 3*n+1) lst

let v = int_of_string Sys.argv.(1);;
let lst = collatz v [];;

print_int v ;;
print_char ',';;
print_int (List.length lst);;
print_char '\n' ;;



