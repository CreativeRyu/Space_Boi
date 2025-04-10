/// @description Destroy self and set viewport to normal

view_xport[0] = originx;
view_yport[0] = originy;

instance_destroy();
audio_stop_sound(snd_boss_incoming);