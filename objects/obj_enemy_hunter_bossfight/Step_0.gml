/// @description Behaviour
event_inherited();

// If Player exists
if(!instance_exists(obj_ship_bossfight)) exit;

// Wenn Spieler in definierter reichweite
if(point_distance(x, y, obj_ship_bossfight.x, obj_ship_bossfight.y) < 350) {
	// Turn to Player Ship
	var _new_angle = point_direction(x, y, obj_ship_bossfight.x, obj_ship_bossfight.y);
	_new_angle = image_angle - angle_difference(image_angle, _new_angle);
	image_angle = lerp(image_angle, _new_angle, 0.05);
	// Bewegung zum Player
	direction = image_angle;
	if(point_distance(x, y, obj_ship_bossfight.x, obj_ship_bossfight.y) < 150) {
		speed-= 0.05;
	} else {
		speed+= 0.01;
	}
	
	
	// Fire Bullet
	// 60 Frames sind eine Sekunde
	// Bullet Feuerrate ist also eine 1/s
	bullet_counter ++;
	if(bullet_counter >= 40) {
		create_bullet(image_angle, obj_enemy_bullet, self.faction, self.id)
		bullet_counter = 0;
	}
} else {
	speed = lerp(speed, fly_speed, 0.1);
	image_angle = lerp(image_angle, direction, 0.05);
}