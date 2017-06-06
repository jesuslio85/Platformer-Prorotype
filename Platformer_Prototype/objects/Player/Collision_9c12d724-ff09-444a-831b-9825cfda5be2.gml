/// @description collide with turret bullet
if (instance_exists(PlayerStats)) {
	PlayerStats.hp -=1;
	show_debug_message(PlayerStats.hp);
}