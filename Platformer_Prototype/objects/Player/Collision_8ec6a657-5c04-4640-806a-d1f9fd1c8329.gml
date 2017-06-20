/// @description collide with spinning trap

//take damage
if (state != hurt_state) {
	image_blend = c_red;
	vspd = -2;
	hspd = (sign(x - other.x) * 8);
	state = hurt_state;
	// then move
	move();
		
	if (instance_exists(PlayerStats)) {
		PlayerStats.hp -=1;
		show_debug_message(PlayerStats.hp);
	}
}