/// @description Random Spawn of Asteroid after triggering the Alarm
if(room != rm_level_1 or room != rm_level_2) {
	exit;
}

spawn_off_camera(obj_meteor, 5);

alarm[0] = 5 * game_get_speed(gamespeed_fps);