/// @description Enemy Thrust Effect

// Particle FX
exhaust_counter++;
	
if(exhaust_counter > 4){
	exhaust_counter = 0;
	var _len = sprite_height * .2;
	var _burst_x = x;
	var _burst_y = y - sprite_height / 2 + 10;
	with(obj_particles) {
		boss_thrust = part_particles_create(part_sys,
		_burst_x,
		_burst_y, 
		part_type_boss_exhaust,
		1);
	}
}