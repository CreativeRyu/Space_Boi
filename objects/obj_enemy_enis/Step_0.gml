/// @description Behaviour
event_inherited();
image_index = hp -1;

// If Player exists
if(!instance_exists(obj_ship)) exit;

// Wenn Spieler in definierter reichweite
var _player_distance = point_distance(x, y, obj_ship.x, obj_ship.y)
if(_player_distance < 400 and _player_distance > 100) {
	// Turn to Player Ship
	var _new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	_new_angle = image_angle - angle_difference(image_angle, _new_angle);
	image_angle = lerp(image_angle, _new_angle, 0.03);
	
	// Bewegung zum Player
	direction = image_angle;
	speed += 0.005;
	
} else if _player_distance >= 400 {
	speed = lerp(speed, original_speed, 0.1);
	image_angle = lerp(image_angle, direction, 0.03);
} else 
	speed = lerp(speed, original_speed, 0.1);