/// @description Camera Setup on Room Start

var _target = obj_ship;
// Camera
// moved to create event

// Viewport enable
view_enabled = true;
// Welcher Viewport benutzt wird
view_visible[0] = true;
if room == rm_start vp_distance = 1 else vp_distance = 1.2;
camera_set_view_size(view_camera[0], global.camera_width * vp_distance, global.camera_height * vp_distance);

// Display
var _display_width = global.camera_width * display_scale;
var _display_height = global.camera_height * display_scale;

window_set_size(_display_width, _display_height);
surface_resize(application_surface, _display_width, _display_height);
//scale_canvas(base_width, base_height, width, height, true, display_scale);
display_set_gui_size(global.camera_width, global.camera_height);