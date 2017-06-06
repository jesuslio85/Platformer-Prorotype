/// Initialize player variables

// Gravity
grav = 1;

// Horizontal and vertical speed
hspd = 0;
vspd = 0;

// Speed in the up direction
jumpspd = 13;

// Pixels to move left and right
movespd = 3.5;

// acceleration
acc = 1;

// Initial state
state = move_state;

// Bullet cooldown. 
// TODO: learn more about alarms
bullet_cooldown = room_speed/3;
alarm[0] = bullet_cooldown;

//create audio emitter
audio_em = audio_emitter_create();

