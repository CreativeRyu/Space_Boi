/// @description Take Damage Event

if(not is_invincible) {
	
	while (shield_on == 1) {
		if(other.faction == FACTIONS.NEUTRAL) {
			with(other) event_perform(ev_other, ev_user0);
		}
		if(!audio_is_playing(snd_shieldbreak)){
			audio_play_sound(snd_shieldbreak, 1, false)
		}
		obj_ship.shield_fade = true;
		alarm[2] = 60;
		exit;
	}
}
	
if not is_invincible and shield_on == 0 {
	instance_destroy();
}