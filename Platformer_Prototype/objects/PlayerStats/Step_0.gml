/// @description to start the game
var start = keyboard_check_pressed(vk_space);

if (gamepad_is_connected(0)) {
	start = gamepad_button_check_pressed(0, gp_start);
}

if (start == true && room == rm_start_menu) {
	room_goto(rm_one);
}

// death or room restart
if PlayerStats.hp <= 0 {
	// TODO: really iffy code on delay before restarting
	// wait a few seconds before restarting
	show_debug_message(alarm[0]);

	if (ready_to_restart == 0) {
		alarm[0] = time_before_restarting;
		ready_to_restart = 1;
	}
}
