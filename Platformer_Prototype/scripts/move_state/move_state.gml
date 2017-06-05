// react to inputs
// move right, left, or not at all
// this will be either -1, 0, or 1 depending on the key pressed
// TODO: add acceleration/deceleration at some point
var move_val = right - left;
if (right || left) {
	hspd = move_val * movespd;
} else {
	hspd = 0;
}
// if we are not on the ground, let's fall
if (!place_meeting(x, y+1, Solid)){
	vspd += grav;
} else {
	//if we are on the ground, let's jump
	if (up) {
		vspd -= jumpspd;
	}
}

// flip the imge if left or right
if (hspd != 0) {
	image_xscale = sign(hspd);
}

move();

// check for landing, not even sure what this does
// TODO: check to see if needed
if (place_meeting(x, y+1, Solid)) && (!place_meeting(x, yprevious+1, Solid)) {
	// this might not be working
	x_scale = image_xscale * 1.4;
	y_scale = image_yscale * .8;
}

