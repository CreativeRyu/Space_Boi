/// @description Enemy Thrust Effect

// Particle FX
exhaust_counter++;
	
if(exhaust_counter > 4){
	exhaust_counter = 0;
	var _len = sprite_height * .3;
	var _burst_x = x - lengthdir_x(_len, image_angle);
	var _burst_y = y - lengthdir_y(_len, image_angle);
	with(obj_particles) {
		part_particles_create(part_sys,
		_burst_x,
		_burst_y, 
		part_type_enemy_exhaust,
		1);
	}
}