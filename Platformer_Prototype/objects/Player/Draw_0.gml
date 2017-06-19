// also draw the player
// direction variable
var dir = point_direction(x, y, mouse_x, mouse_y);
// TODO: change to a flipped variable at some point for lighting
var x_scale = 1;
if (mouse_x < x) {
	x_scale = -1;
}
//draw the player
if (hspd == 0) {
	draw_self();
	sprite_index = spr_player_idle;
	image_xscale = x_scale;
} else {
	draw_self();
	sprite_index = spr_player_walk;
	image_xscale = x_scale;
}

if (mouse_check_button(mb_left)) {
	/// draw the gun
	// that math on the x is just to move the gun a little to the left
	draw_sprite_ext(spr_gun, 0, x-4*x_scale, y, 1, x_scale, dir, image_blend, image_alpha);
} else if (mouse_check_button(mb_right)) {
	// draw the punch
	draw_sprite_ext(spr_gun_secondary, 0, x-4*x_scale, y, 1, x_scale, dir, image_blend, image_alpha);
}

