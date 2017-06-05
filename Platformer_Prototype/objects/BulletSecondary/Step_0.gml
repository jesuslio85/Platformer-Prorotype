/// @description destroy bullet after some distance
// distance from player
var dis = point_distance(x, y, Player.x, Player.y)

if (dis >= 70 ) {
	instance_destroy();
}
