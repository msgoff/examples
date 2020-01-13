open Core
open Printf
let string_split s = String.split_on_chars s ~on:[':';'\n';'='];;

let parse line =
  let p = Re2.create_exn "\\s+.*" in
  Re2.find_all p line;;

let string_opt s =
    match s with
    Some s -> s
    | None -> "";;

let core_kernel_msg l =
  match l with
    Core_kernel__.Result.Ok l -> string_opt (List.hd l)
    | _ -> "ERROR";;

let test_string = core_kernel_msg (parse " 123");;
printf "%s" test_string;;

let tail s =
  List.slice s 1 (List.length s);;

let substring_test s l =
  List.map ~f:(fun x ->String.is_substring s x) l;;

let is_key key =
    match key with
      | "k1" -> true
      | "k2" -> true
      | _ -> false ;;

let string_rewrite key =
  match key with
    "t1" -> "Bob"
  | "t2" -> "Jane"
  | _ -> "Unknown" ;;

let clean_key key =
  String.tr ~target:'-' ~replacement:'_' (
    String.tr ~target:' ' ~replacement:'_' (
      String.strip (
        String.lowercase (
          string_opt key )))) ;;

let clean_value l =
  String.strip (
    String.concat ~sep:"," (tail l)) ;;

let handle_line line =
  if String.is_substring ~substring:":" line
    then
      let l = string_split line in
      let key  = List.hd l in
      if is_key (String.strip (string_opt key))
      then
        let cleaned_key = clean_key key in
        let cleaned_value = clean_value l in
        printf "%s:%s\n" cleaned_key cleaned_value;;

let () =
  let file_to_read = Sys.argv.(1) in
    let lines = In_channel.read_lines file_to_read in
      List.iter ~f: handle_line lines;;
