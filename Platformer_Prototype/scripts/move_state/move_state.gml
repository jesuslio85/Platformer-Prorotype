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
}  else {
	// if we are on the ground or 
	if (up) {
		vspd -= jumpspd;
	}
}

// jump off the right wall
if (place_meeting(x+1, y, WallJump)) {
	vspd = 1;
	if (left && !right) {
		vspd -= jumpspd;
	}
}
// jump off the left wall
if (place_meeting(x-1, y, WallJump)) {
	vspd = 1;
	if (right && !left) {
		vspd -= jumpspd;
	}
}

// flip the imge if left or right
if (hspd != 0) {
	image_xscale = sign(hspd);
}

move();


