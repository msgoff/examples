open Core

let string_split s = String.split_on_chars s ~on:[':';'\n';'='];;

let string_opt s =
  match s with
  Some s -> s
  | None -> "";;

let tail s =
  List.slice s 1 (List.length s);;

let substring_test s l =
  List.map ~f:(fun x ->String.is_substring s x) l;;

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
        let cleaned_key = clean_key key in
        let cleaned_value = clean_value l in
        printf "%s:%s\n" cleaned_key cleaned_value;;

let () =
  let file_to_read = Sys.argv.(1) in
    let lines = In_channel.read_lines file_to_read in
      List.iter ~f: handle_line lines;;
