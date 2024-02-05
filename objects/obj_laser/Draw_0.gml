/// @description Draw Laser
var _range = 700;

// Draw Line
draw_line_width_color(x,y,
	x+lengthdir_x(_range, direction),
	y+lengthdir_y(_range, direction),
	6, c_white, image_blend
);

// Read Collision Object in Line
var _collision_object = collision_line(
	x+lengthdir_x(40, direction),
	y+lengthdir_y(40, direction),
	x+lengthdir_x(_range, direction),
	y+lengthdir_y(_range, direction),
	obj_faction, false, false
);

// If Collision Object is of different Faction
// Then associated Object fires Take Damage Event
if(_collision_object != noone) {
	if(_collision_object.faction != faction) {
		with(_collision_object){
			if(!immune_to_laser){ event_perform(ev_other, ev_user0);}
			else {
					if(!audio_is_playing(snd_shield_deflect))
					audio_play_sound(snd_shield_deflect, 1, false);
			}
		}	
	}
}