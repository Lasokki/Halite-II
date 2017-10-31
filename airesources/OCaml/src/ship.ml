type docking_status =
  | Docked
  | Docking
  | Undocking
  | Undocked

type ship = {
    owner : int;
    id : int;
    x : float;
    y : float;
    radius : float;
    health : int;
    docking_status: docking_status;
    docking_progress: int;
    weapon_cooldown: int;
  }
