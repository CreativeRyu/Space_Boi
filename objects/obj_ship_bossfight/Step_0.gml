/// @description Ship Controls
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
current_shipx = x;
current_shipy = y;

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
	audio_play_sound(snd_thrusters, 1, true);
	if(y + sprite_yoffset < room_height + camera_offset) {
		y += fly_speed/2;
	}
}
else {
	direction_input = 0;
	audio_stop_sound(snd_thrusters);
}

if(keyboard_check(vk_up) or keyboard_check(ord("W"))
or _up_dpad or _v_point < -0.2) {
	if(y > 100) {
		y -= fly_speed/2;
	}
}

if(keyboard_check(vk_up) or keyboard_check(ord("W")) or _r2_button or _r1_button) {
		if(!audio_is_playing(snd_boost)){
			audio_play_sound(snd_boost,1,false);
		}
		if(fly_speed < 10) {
			fly_speed += 0.5;
		}
	}
else {
	audio_stop_sound(snd_boost);
	if(fly_speed > 5) {
		fly_speed -= 1;
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