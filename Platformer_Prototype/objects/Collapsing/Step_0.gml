/// @description start the alarm on colliding with the player

if (!place_meeting(x, y-1, Player)) && (timer_started == 0) {
		alarm[0] = time_to_collapse;
} else {
	timer_started = 1;
}
