/// @description Hier Beschreibung einfügen
global.camera_x = 0;
global.camera_y = 0;

global.camera_width = 640;
global.camera_height = 360;

//base_width = global.camera_width;
//base_height = global.camera_height;

//width = base_width;
//height = base_height;

global.camera_shake = 0;
background_speed = -0.2;
bg_width = sprite_get_width(spr_start_screen);
rollback_value = -1 * (bg_width - global.camera_width);

display_scale = 1.2;
vp_distance = 1.2;
vp_correctionx = 70;
vp_correctiony = 50;
