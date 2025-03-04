/// @description Follow Target and Parallax
var _target = obj_ship;

// Change Aspect Ratio
//var _display_ratio = display_get_width() / display_get_height();
//var _ratio = global.camera_width / global.camera_height;

//if (_display_ratio < _ratio){
//    global.camera_height = display_get_height();

//    global.camera_width = global.camera_height * _display_ratio;
//	//global.display_scale = 1;
//} 

// Change Aspect Ratio in Browser
//if (browser_width != width || browser_height != height)
//    {
//	    width = min(base_width, browser_width);
//	    height = min(base_height, browser_height);
//	    scale_canvas(base_width, base_height, width, height, true, display_scale);
//		scale_gui(width, height);
//    }

// Follow Target
if(instance_exists(_target)){
	global.camera_x = _target.x  -vp_correctionx - (global.camera_width/3.4);
	global.camera_y = _target.y  -vp_correctiony - (global.camera_height/3);
	
	
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
}