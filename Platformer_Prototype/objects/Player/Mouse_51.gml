/// @description create bullet
//and some tricky math to make it come out of barrel
if (alarm[0] <= 0) {
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var xscale = 1;
	if (mouse_x < x) {
		xscale = -1;
	}
	// TODO: wtf come back to this
	var x_offset = lengthdir_x(28, dir);
	var y_offset = lengthdir_y(28, dir);
	//gives us origin position of gun
	var gun_x = x - 4*xscale;
	instance_create_layer(gun_x + x_offset, y + y_offset, "Instances", BulletSecondary);
	alarm[0] = bullet_cooldown;
}