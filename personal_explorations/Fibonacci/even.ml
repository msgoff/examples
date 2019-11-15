open Core

let get_or_default (default_value: 'a) = function
    | Some x -> x
    | None   -> default_value

let arg = int_of_string Sys.argv.(1)


let v =
        if arg mod 2 = 0 then arg else 0;;

print_int  v;;

Out_channel.output_char stdout '\n';
