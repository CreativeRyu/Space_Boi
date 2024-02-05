/// @description Powerup on Destroy

// hier upgrade auswählen
var _random_number = irandom_range(0, 20);
drop_powerup(_random_number);

score += 10;
audio_play_sound(snd_destroy_asteroid, 1, false);

var _xx = x, _yy = y;

if(sprite_index == spr_asteroid_l){
	global.camera_shake = 5;
	
	// Particle FX L
	with(obj_particles) part_particles_create(part_sys, _xx, _yy, part_type_asteroid_debris, 2);
	repeat(2){
		var _new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
		_new_asteroid.sprite_index = spr_asteroid_m
	}
}
else if(sprite_index == spr_asteroid_m) {
	global.camera_shake = 3;
	repeat(2){
		
	// Particle FX M
	with(obj_particles) part_particles_create(part_sys, _xx, _yy, part_type_asteroid_debris_m, 2);
		var _new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
		_new_asteroid.sprite_index = spr_asteroid_s
	}
} else {
	global.camera_shake = 1.5;
}
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}