/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x, y-1, Player)) {
	alarm[0] = time_to_collapse;
} else if (alarm[0] <= 0) {
	instance_destroy();
}





