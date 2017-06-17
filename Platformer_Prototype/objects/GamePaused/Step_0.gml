/// @description pause conditions

if (game_is_paused == false && keyboard_check_pressed(ord("P"))) {
	instance_deactivate_all(true);
	game_is_paused = true;
} else if (game_is_paused == true && (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P")))) {
	instance_activate_all();
	game_is_paused = false;
}

