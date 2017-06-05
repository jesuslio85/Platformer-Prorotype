/// @description exit_state
// if we are visible

if (image_alpha > 0) {
	image_alpha -= .250;
} else {
	// if we aren't visible
	if (room != room_last) {
		// if there is a next room
		room_goto_next();
	} else {
		game_restart();
	}
}