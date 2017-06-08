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
	default :
	//draw the stats
	//draw heart spaces to have a visual representation of total health
	for (var i = 0; i < maxhp; i++;) {
		draw_sprite_ext(spr_health, 0, 24+i*15, 20, 1, 1, 0, c_gray, .5);
	}

	//draw the health sprites
	//24 is distance from left
	for (var i = 0; i < hp; i++;) {
		draw_sprite_ext(spr_health, 0, 24+i*15, 20, 1, 1, 0, c_white, 1);
	}

}
