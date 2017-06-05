// @description panda_move_left_state
var wall_at_left = place_meeting(x-1, y, Solid);
var ledge_at_left = !place_meeting(bbox_left-1, bbox_bottom+1, Solid);

if (wall_at_left || ledge_at_left) {
	state = panda_move_right_state;
}


// Control the panda sprite

image_xscale = -1;

// Move the panda
x -= .75;
