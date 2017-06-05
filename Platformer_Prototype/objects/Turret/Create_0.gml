/// @description Initialize the bullet
// Bullet cooldown. 6 times per frame/second
// TODO: learn more about alarms, make it * 3 for every 3 secs
bullet_cooldown = room_speed*3;
alarm[0] = bullet_cooldown;
