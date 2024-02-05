/// @description Create Asteroids on Game Room around the Player

if(room == rm_start){
	audio_play_sound(snd_start_screen, 1, true);
}

if(room = rm_level_1) {
	audio_stop_all();
	audio_play_sound(snd_background,2, true);
	spawn_off_camera(obj_meteor, 50);

	alarm[0] = 60;
}

if(room = rm_level_2){
	audio_stop_all();
	audio_play_sound(snd_start_screen,2, true);
	spawn_off_camera(obj_asteroid, 20);
	spawn_off_camera(obj_enemy_scout, 3);
	spawn_off_camera(obj_enemy_hunter, 2);
	spawn_off_camera(obj_enemy_enis, 1);
	if instance_exists(obj_ship) exit;
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_ship);
	
	alarm[0] = 60;
}