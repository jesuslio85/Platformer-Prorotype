/// @description start the alarm on colliding with the player

// variable to start the timer
var timer_started = 0;

if (!place_meeting(x, y-1, Player)) {
	if (timer_started == 0) {
		alarm[0] = time_to_collapse;
		timer_started = 1;
	}
}
