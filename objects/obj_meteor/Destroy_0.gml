/// @description Powerup on Destroy

// Drops Powerup here
var _random_number = irandom_range(0, 20);
drop_powerup(_random_number);

score += 10;
audio_play_sound(snd_destroy_asteroid, 1, false);

var _xx = x, _yy = y;

if(sprite_index == spr_meteor_l){
	global.camera_shake = 5;
	
	// Particle FX L
	with(obj_particles) part_particles_create(part_sys, _xx, _yy, part_type_meteor_debris, 3);
	repeat(2){
		var _new_asteroid = instance_create_layer(x,y,"Instances", obj_meteor);
		_new_asteroid.sprite_index = spr_meteor_m
	}
}
else if(sprite_index == spr_meteor_m) {
	global.camera_shake = 3;
	repeat(2){
		
	// Particle FX M
	with(obj_particles) part_particles_create(part_sys, _xx, _yy, part_type_meteor_debris_m, 2);
		var _new_asteroid = instance_create_layer(x,y,"Instances", obj_meteor);
		_new_asteroid.sprite_index = spr_meteor_s
	}
} else {
	global.camera_shake = 1.5;
}
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}