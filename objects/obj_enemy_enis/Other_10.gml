/// @description Enemy Take Damage Event


hp -= 1;
if(hp > 1){
	audio_play_sound(snd_shieldbreak,1,false);
} else if(hp == 1) {
	audio_play_sound(snd_armor_hit,1,false);
}

if(hp <= 0) {
	instance_destroy();
}