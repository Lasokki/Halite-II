type ship
(* ship object, with the following variables: owner, id, x, y, radius, health, docking status, planet
 *
 * ship.thrust([magnitude], [angle]): Return a thrust command string for this ship considering the desired magnitude and angle
 *
 * ship.can_dock([planet object]): Returns whether the ship can dock at that planet
 *
 * ship.dock([planet object]): Return a docking command towards the desired planet object
 *
 * ship.undock(): Return an undocking command for this ship
 *
 * ship.navigate([target], [game map], [speed], [avoid obstacles], [max corrections], [angular step], [ignore ships], [ignore planets]): Return a naive navigate command for this turn, considering the desired target. Note that the algorithm for pathfinding here should not be optimized for any new language for the purpose of fairness *)
