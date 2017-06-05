/// @description 

// point at the player
image_angle = point_direction(x, y, Player.x, Player.y);

// distance from player
var dis = point_distance(x, y, Player.x, Player.y)

// if we are close enough or if we're jumping
// TODO: un hard code 140, it's just a distance i chose
if (dis < 140 || (Player.vspd > 0)) {
	// shoot a bullet every x frames
	if (alarm[0] <= 0) {
		bullet_direction = point_direction(x, y, Player.x, Player.y);
		create_bullet = instance_create_layer(x, y, "Instances", TurretBullet);
		create_bullet.direction = bullet_direction;
		create_bullet.speed = 1;
		alarm[0] = bullet_cooldown;
	}
}

