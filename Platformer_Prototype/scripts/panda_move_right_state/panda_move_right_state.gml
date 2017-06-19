// @description panda_move_right_state
var wall_at_right = place_meeting(x+1, y, Solid);
var ledge_at_right = !place_meeting(bbox_right+1, bbox_bottom+1, Solid);

if (wall_at_right || ledge_at_right) {
	state = panda_move_left_state;
}


// Control the panda sprite

image_xscale = 1;

// Move the panda
x += .75;

