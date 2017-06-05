/// move()
// this is our general move code with collisions
// check collision before commiting to move
// horizontal collision with walls or destructible walls
if (place_meeting(x + hspd, y, Solid)) {
	// sign is to check left and right
	while(!place_meeting(x + sign(hspd), y, Solid)) {
		x += sign(hspd);
	}
	// so that we don't keep moving
	hspd = 0;
}
// now apply them 
x += hspd;
// vertical collision with walls or destructible walls
if (place_meeting(x, y + vspd, Solid)) {
	// sign is to check left and right
	while(!place_meeting(x, y + sign(vspd), Solid)) {
		y += sign(vspd);
	}
	// so that we don't keep moving
	vspd = 0;
}

y += vspd;