open Printf

let send_message c =
  print_endline c;
  flush stdout

let init_file = "init_stuff.initlog"
let turn_one = "turn_one.turnlog"

let write_init tag width_height map =
  let oc = open_out (tag ^ "_" ^ init_file) in
  fprintf oc "%s\n" tag;
  fprintf oc "%s\n" width_height;
  fprintf oc "%s\n" map;
  close_out oc

let init bot_name =
  let tag = read_line ()
  and width_height = read_line ()
  and map = read_line () in
  write_init tag width_height map;
  send_message bot_name;
  tag

let read_map () = read_line ()

let write_map tag map =
  let oc = open_out (tag ^ "_" ^ turn_one) in
  fprintf oc "%s\n" map;
  close_out oc
