let tag = Game.init "jatoinenbotinnimi"
let game_map = Game.read_map ()
let () = Game.write_map tag game_map
(* let () = Game.send_message "lol" *)
