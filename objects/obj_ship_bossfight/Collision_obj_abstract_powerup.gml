/// @description Powerup Collisions
var _powerup_type = object_get_name(other.object_index);

switch _powerup_type{
	case "obj_powerup_shield":
		obj_ship_bossfight.shield_on = 1;

		audio_play_sound(snd_boot_shield, 1, false);
		break;
		
	case "obj_powerup_doubleshot":
		guns = 0;

		audio_play_sound(snd_powerup_doubleshot, 1, false);
		alarm[3] = 8 * game_get_speed(gamespeed_fps);
		break;
		
	case "obj_powerup_splitter":
		guns = 1;

		audio_play_sound(snd_powerup_splitter, 1, false);
		alarm[3] = 8 * game_get_speed(gamespeed_fps);
		break;
		
	case "obj_powerup_laser":
		guns = 2;

		audio_play_sound(snd_powerup_splitter, 1, false);
		alarm[3] = 8 * game_get_speed(gamespeed_fps);
		break;
		
	case "obj_powerup_quad":
		guns = 3;
		
		audio_play_sound(snd_powerup_splitter, 1, false);
		alarm[3] = 8 * game_get_speed(gamespeed_fps);
		break;
		
	case "obj_powerup_star":
		guns = 4;
		
		audio_play_sound(snd_powerup_splitter, 1, false);
		alarm[3] = 8 * game_get_speed(gamespeed_fps);
		break;
}

instance_destroy(other);











