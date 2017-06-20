/// Collide with an enemy
// TODO: understand this code better
// TODO: generalize to damage any enemy
var above_enemy = y < other.y + vspd;
var falling = vspd > 0;

if (above_enemy && (falling)) {
	// move player up a little to not collide with another enemy check for wall
	if (!place_meeting(x, yprevious, Solid)) {
		y = yprevious;
	}
	// move one pixel above the enemy
	while (!place_meeting(x, y+1, other)) {
		y++;
	}
	
	// damage the enemy
	with (other) {
		panda_health -=1;
	}
	
	// bounce off the enemy
	vspd = -(jumpspd/1.5);
} else {
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
}
