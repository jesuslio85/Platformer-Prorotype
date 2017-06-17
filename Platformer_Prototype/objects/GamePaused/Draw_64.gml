/// @description Pause Menu

if (game_is_paused == true and pause_timer_started != 0 and pause_not_pulsing == 0) {

	draw_set_halign(fa_center);
	draw_set_font(fnt_title);
	draw_text_color(room_width/2, room_height/2, "Paused", c_gray, c_gray, c_gray, c_gray, 1);
	draw_text_color(room_width/2, room_height/2, "Paused", c_black, c_black, c_black, c_black, 1);
} else if (game_is_paused == true && pause_timer_started = 0) {
	pause_not_pulsing = 1;
	alarm[1] = pause_text_not_pulsing;
	pause_timer_started = 1;
	alarm[0] = pause_text_pulse;
}
