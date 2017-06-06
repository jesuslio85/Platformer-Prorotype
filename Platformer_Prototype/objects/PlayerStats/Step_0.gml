/// @description to start the game
var start = keyboard_check_pressed(vk_space);

if (gamepad_is_connected(0)) {
	start = gamepad_button_check_pressed(0, gp_start);
}

if (start == true && room == rm_start_menu) {
	room_goto(rm_one);
}
