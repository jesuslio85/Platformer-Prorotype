/// @description Draw the start menu
switch(room) {
	case rm_start_menu : 
	// Game title in start menu
	draw_set_halign(fa_center);
	draw_set_font(fnt_title);
	draw_text_color((room_width/2)+2, (room_height/4)+2, "Super Platformer\nPrototype", c_gray, c_gray, c_gray, c_gray, 1);
	draw_text_color(room_width/2, room_height/4, "Super Platformer\nPrototype", c_white, c_white, c_white, c_white, 1);
	
	var str;
	if (gamepad_is_connected(0)) {
		str = "Press [Start] to Play"
	} else {
		str = "Press [Space] to Play"
	}
	// Start game text in start menu
	draw_set_font(fnt_start_button)
	draw_text_color((room_width/2)+2, (room_height/4)+ (room_height/2)+2, str, c_gray, c_gray, c_gray, c_gray, 1);
	draw_text_color(room_width/2, (room_height/4)+ (room_height/2), str, c_white, c_white, c_white, c_white, 1);
	break;
}
