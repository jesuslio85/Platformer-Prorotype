/// @description collide with lava

if (instance_exists(PlayerStats)) {
	PlayerStats.hp -= PlayerStats.maxhp;
	show_debug_message(PlayerStats.hp);
}
