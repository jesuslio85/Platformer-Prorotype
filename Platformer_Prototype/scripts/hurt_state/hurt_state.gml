// hurt_state()
if (!place_meeting(x, y + 1, Solid)) {
	vspd += grav;
} else {
	vspd = 0;
	hspd = 0;
	apply_friction(acc);
}

move_after_damage();

if (hspd == 0 && vspd == 0) {
	image_blend = c_white;
	state = move_state
}