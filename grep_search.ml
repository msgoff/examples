let search_string = Sys.argv.(1) ;;
let cmd = Sys.command ;;
let cmd_string = "grep --color -C 5 -ir " ^ search_string ;;
cmd cmd_string ;;
