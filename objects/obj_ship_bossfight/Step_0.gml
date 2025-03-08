// Ship Controls
// Android Device Controls
var _left_dpad = gamepad_button_check(0, gp_padl);
var _right_dpad = gamepad_button_check(0, gp_padr);
var _down_dpad = gamepad_button_check(0, gp_padd);
var _up_dpad = gamepad_button_check(0, gp_padu);

var _a_button = gamepad_button_check_pressed(0, gp_face2);
var _b_button = gamepad_button_check(0, gp_face1);
var _h_point = gamepad_axis_value(0, gp_axislh);
var _v_point = gamepad_axis_value(0, gp_axislv);
var _r2_button = gamepad_button_check(0, gp_shoulderrb);
var _r1_button = gamepad_button_check(0, gp_shoulderr);

if (sprite_index == spr_ship) {
// GamePad Controls
// X Movement mit Raumbegrenzung
if(keyboard_check(vk_left) or keyboard_check(ord("A"))
or _left_dpad or _h_point < -0.2) {
	if(x - sprite_xoffset > 0) {
		x -= fly_speed;
	}
}

if(keyboard_check(vk_right) or keyboard_check(ord("D"))
or _right_dpad or _h_point > 0.2) {
	if(x + sprite_xoffset < room_width + camera_offset){
		x += fly_speed;
	}
}

// Y Movement
if(keyboard_check(vk_down) or keyboard_check(ord("S"))
or _down_dpad or _v_point > 0.2) {
	direction_input = "down";
	if(y + sprite_yoffset < room_height + camera_offset) {
		y += fly_speed/2;
	}
}
else {
	direction_input = 0;
}

if(keyboard_check(vk_up) or keyboard_check(ord("W"))
or _up_dpad or _v_point < -0.2) {
	if(y > 100) {
		y -= fly_speed/2;
	}
}

// Particle Thrust FX

	exhaust_counter++;

if(exhaust_counter > 6){
	exhaust_counter = 0;
	var _len = sprite_height * .3;
	var _burst_x = x - lengthdir_x(_len, image_angle + 90);
	var _burst_y = y - lengthdir_y(_len, image_angle + 90);
	with(obj_particles) {
		part_particles_create(part_sys,
		_burst_x,
		_burst_y, 
		part_type_exhaust,
		1);
		}
	}


if(keyboard_check_pressed(vk_space) or _a_button) {
	create_gun(image_angle + 90, guns, bullettype, faction, id);
}

}