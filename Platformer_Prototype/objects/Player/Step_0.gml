// @description control the player's tate
get_input();
// execute the state
script_execute(state);
// Death, player took too much damage
if PlayerStats.hp <= 0 {
	room_restart();
}




