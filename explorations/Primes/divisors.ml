open Core
let v = int_of_string Sys.argv.(1);;
let rec divisors x n lst = 
	match n with 
		1 -> []
		|_ -> if x mod n = 0 then (n:: divisors x (n-1) lst)  else divisors x (n-1) lst;;



let lst = divisors v (v-1) [] ;;
List.iter ~f:(printf "%d\n") lst ;;             
