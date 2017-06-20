// also draw the player
// direction variable for gun that shoots any direction
var dir = point_direction(x, y, mouse_x, mouse_y);

var left_right_dir = 1;
if (mouse_x < x) {
	left_right_dir = -1;
}

var x_scale = 1;
if (mouse_x < x) {
	x_scale = -1;
}
//draw the player
if (hspd == 0) {
	sprite_index = spr_player_idle;
	// face wall jump walls if colliding with them, otherwise just face mouse direction
	if (place_meeting(x+1, y, WallJump)) {
		image_xscale = 1;
	} else if (place_meeting(x-1, y, WallJump)) {
		image_xscale = -1;
	} else {
		image_xscale = x_scale;
	}
} //else {
	// TODO: replace with spr_player_walk when you have it
	//sprite_index = spr_player_walk;
	//image_xscale = x_scale;
//}
draw_self();

if (mouse_check_button(mb_left)) {
	/// draw the gun
	// that math on the x is just to move the gun a little to the left
	draw_sprite_ext(spr_main_gun, 0, x-4*x_scale, y, left_right_dir, x_scale, 0, image_blend, image_alpha);
// TODO: add a better way to swap weapons
//if (mouse_check_button(mb_left)) {
	/// draw the gun
	// that math on the x is just to move the gun a little to the left
//	draw_sprite_ext(spr_gun, 0, x-4*x_scale, y, 1, x_scale, dir, image_blend, image_alpha);
} else if (mouse_check_button(mb_right)) {
	// draw the punch
	draw_sprite_ext(spr_gun_secondary, 0, x-4*x_scale, y, 1, x_scale, dir, image_blend, image_alpha);
}

