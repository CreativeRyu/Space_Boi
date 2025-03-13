/// @description  Ship Controls
// Der Winkel des Schiffs wird bei Tastendruck verändert
// Android Device Controls
var _left_dpad = gamepad_button_check(0, gp_padl);
var _right_dpad = gamepad_button_check(0, gp_padr);
var _a_button = gamepad_button_check_pressed(0, gp_face2);
var _b_button = gamepad_button_check(0, gp_face1);
var _h_point = gamepad_axis_value(0, gp_axislh);
var _v_point = gamepad_axis_value(0, gp_axislv);
var _r2_button = gamepad_button_check(0, gp_shoulderrb);
var _r1_button = gamepad_button_check(0, gp_shoulderr);

// GamePad Controls

if (sprite_index == spr_ship) {

	if(keyboard_check(vk_left) or keyboard_check(ord("A"))
	or _left_dpad or _h_point < -0.2) {
		image_angle += 5;
	}

	if(keyboard_check(vk_right) or keyboard_check(ord("D"))
	or _right_dpad or _h_point > 0.2) {
		image_angle -= 5;
	}

	if(keyboard_check(vk_up) or keyboard_check(ord("W"))
	or _r2_button or _r1_button) {
		if(!audio_is_playing(snd_boost)){
			audio_play_sound(snd_boost,1,false);
		}
		motion_add(image_angle + 90, 0.05);
		image_speed = 1;
		
		// Particle FX
		exhaust_counter++;
		
		if(exhaust_counter > 4){
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
	} else {
		audio_stop_sound(snd_boost);
		image_speed = 0;
		image_index = 0;
	}

	if(keyboard_check(vk_down) or keyboard_check(ord("S"))
	or _b_button) {
		if(speed > 0) {
			speed -= 0.05;
		}
	}

	if(keyboard_check_pressed(vk_space) or _a_button) {
		create_gun(image_angle + 90, guns, bullettype, faction, id);

	}

	move_wrap(true, true, sprite_width / 2);
}