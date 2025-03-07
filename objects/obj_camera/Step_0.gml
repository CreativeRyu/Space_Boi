/// @description Follow Target and Parallax Effect Camera System
// Toggle Fullscreen 4:3
if keyboard_check_pressed(vk_f11) {
	window_set_fullscreen(!window_get_fullscreen());
}


if (room == rm_level_3) {
	var _target = obj_ship_bossfight
} else {
	var _target = obj_ship;
}

// Follow Target
if(instance_exists(_target)){
	global.camera_x = _target.x  -vp_correctionx - (global.camera_width/2);
	global.camera_y = _target.y  -vp_correctiony - (global.camera_height/2);
	
	global.camera_x = clamp(global.camera_x, 0, room_width - global.camera_width);
	global.camera_y = clamp(global.camera_y, 0, room_height - global.camera_height);
}

// Camera Shake
global.camera_x += random_range(-1*global.camera_shake, global.camera_shake);
global.camera_y += random_range(-1*global.camera_shake, global.camera_shake);

if(global.camera_shake > 0) {
	global.camera_shake -= 0.2;
	if(global.camera_shake < 0) {
		global.camera_shake = 0;
	} 
}

// Set Camera Position
camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y);

// Parallax Effect
if(room == rm_start) {
	var _currentx = layer_get_x("Background");
	if(_currentx <= rollback_value or _currentx > 0) background_speed *= -1;
	layer_hspeed("Background", background_speed);
}

if(room == rm_level_1){
	// Background
	layer_x("Background", global.camera_x * 0.99);
	layer_y("Background", global.camera_y * 0.99);
	
	// Starfield
	layer_x("Parallax_0", global.camera_x * 0.98);
	layer_y("Parallax_0", global.camera_y * 0.98);
	
	// Moon
	layer_x("Parallax_1", global.camera_x * 0.94-256);
	layer_y("Parallax_1", global.camera_y * 0.91-256);
	
	// Earth
	layer_x("Parallax_2", (global.camera_x * 0.90)-256);
	layer_y("Parallax_2", (global.camera_y * 0.90)-256);
	
	// Gradient same as earth
	layer_x("Parallax_3", global.camera_x * 0.90-256);
	layer_y("Parallax_3", global.camera_y * 0.90-256);
	
	// Nebula
	layer_x("Parallax_4", global.camera_x * 0.60);
	layer_y("Parallax_4", global.camera_y * 0.60);
	
} else if(room == rm_level_2){
	
	// Background
	layer_x("Background", global.camera_x * 0.99);
	layer_y("Background", global.camera_y * 0.99);
	
	// Starfield
	layer_x("Parallax_0", global.camera_x * 0.98);
	layer_y("Parallax_0", global.camera_y * 0.98);
	
	// Nebula
	layer_x("Parallax_1", global.camera_x * 0.60);
	layer_y("Parallax_1", global.camera_y * 0.60);

} else if(room == rm_level_3){
	
	// Background
	layer_x("Background", global.camera_x * 0.90);
	layer_y("Background", global.camera_y * 0.90);
	
	// Cluster
	layer_x("Cluster", global.camera_x * 0.88);
	layer_y("Cluster", global.camera_y * 0.88);
	
	// Starfield
	layer_x("Starfield", global.camera_x * 0.89);
	layer_y("Starfield", global.camera_y * 0.89);
}