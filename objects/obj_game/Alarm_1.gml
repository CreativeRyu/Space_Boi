/// @description Restore Ship after explosion


if(room == rm_level_1 or rm_level_2) {
	if instance_exists(obj_ship) exit;
	instance_create_layer(global.camera_width / 2 + 70 , global.camera_height/2 + 50, "Instances", obj_ship)
	lives -= 1;
}
if(room == rm_level_3) {
	if instance_exists(obj_ship) exit;
	instance_create_layer(global.camera_width / 2 + 70 , global.camera_height/2 + 50, "Instances", obj_ship_bossfight)
	lives -= 1;
}