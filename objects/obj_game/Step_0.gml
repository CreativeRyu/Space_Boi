/// @description Changing Rooms here
if(keyboard_check_pressed(vk_enter) 
or gamepad_button_check_pressed(0, gp_start)
or mouse_check_button_pressed(mb_left)
){
	switch(room) {
		case rm_start:
			room_goto(rm_level_1);
			
			break;
		
		case rm_level_1_complete:
			room_goto(rm_level_2);
			
			break;
			
		case rm_win:	
		case rm_gameover:
			game_restart();

			break;
	}
}

if (room == rm_level_1) {
	if(score >= 1000) {
		room_goto(rm_level_1_complete);
		audio_stop_all()
		audio_play_sound(snd_win, 1, false);
	}
	
	if(lives <= 0){
		audio_stop_all()
		room_goto(rm_gameover);
		audio_play_sound(snd_lose, 1, false);
	}
}

if (room == rm_level_2) {
	if(instance_number(obj_abstract_enemy) <= 0) {
		room_goto(rm_win);
		audio_stop_all()
		audio_play_sound(snd_win, 1, false);
	}
	if(lives <= 0){
		audio_stop_all()
		room_goto(rm_gameover);
		audio_play_sound(snd_lose, 1, false);
	}
}