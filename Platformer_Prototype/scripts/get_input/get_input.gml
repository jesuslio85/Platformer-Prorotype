/// get_input()
/// Get the player's input

// define keys to use
var right_key = "D";
var left_key = "A";
var up_key = "W";
var down_key = "S"; 

// check input
right = keyboard_check(vk_right) || keyboard_check(ord(right_key));
left = keyboard_check(vk_left) || keyboard_check(ord(left_key));
// Check to see if being pressed but wasn't being pressed in the frame right before it
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord(up_key));
up_release = keyboard_check_released(vk_up) || keyboard_check(ord(up_key));
down = keyboard_check(vk_down) || keyboard_check(ord(down_key));

// override for gamepad
var gp_id = 0;
var thresh = .5;

if (gamepad_is_connected(gp_id)) {
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
    left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    up = gamepad_button_check_pressed(gp_id, gp_face1);
    up_release = gamepad_button_check_released(gp_id, gp_face1);
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
}