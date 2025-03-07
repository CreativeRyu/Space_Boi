/// @description On destruction
global.camera_shake = 8;
instance_create_layer(x, y, "Instances", obj_explosion);
repeat(20) {
	instance_create_layer(x, y, "Instances", obj_debris);
}
	
with(obj_game){
	alarm[1] = 2 * game_get_speed(gamespeed_fps);
}