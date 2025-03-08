/// @description Take Damage Event

if(not is_invincible) {
	
	while (shield_on == 1) {
		if(other.faction == FACTIONS.NEUTRAL) {
			with(other) event_perform(ev_other, ev_user0);
		}
		if(!audio_is_playing(snd_shieldbreak)){
			audio_play_sound(snd_shieldbreak, 1, false)
		}
		obj_ship_bossfight.shield_fade = true;
		alarm[2] = 60;
		exit;
	}
}

if not is_invincible and shield_on == 0 {
	current_hp =- other.damage;
	if (current_hp <= 0) {
		sprite_index = spr_explosion;
		image_speed = 1;
		image_xscale = 1.7;
		image_yscale = 1.7;
		global.camera_shake = 8;
		audio_play_sound(snd_explosion, 1, false);
		// repeat(20) {
		// 	instance_create_layer(x, y, "Instances", obj_debris);
		// }
	}
}