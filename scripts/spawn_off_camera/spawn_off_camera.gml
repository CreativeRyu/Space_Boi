/// @description Spawn off Camera
/// @arg obj
/// @arg number

function spawn_off_camera(_obj, _count){

	var _xpos, _ypos;
	var _padding = 64;
	
	repeat(_count){
		_xpos = random_range(0, room_width);
		_ypos = random_range(0, room_height);
	
		while(point_in_rectangle(_xpos,_ypos,
		global.camera_x - _padding,
		global.camera_y - _padding,
		global.camera_x + global.camera_width + _padding,
		global.camera_y + global.camera_height + _padding)){
			_xpos = random_range(0, room_width);
			_ypos = random_range(0, room_height);
		}
	
		instance_create_layer(_xpos, _ypos, "Instances", _obj);
	}
}