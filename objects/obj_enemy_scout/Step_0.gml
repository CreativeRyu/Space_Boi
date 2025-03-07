/// @description Behaviour
event_inherited();

// If Player exists
if(!instance_exists(obj_ship)) exit;

// Wenn Spieler in definierter reichweite
if(point_distance(x, y, obj_ship.x, obj_ship.y) < 250) {
	// Turn to Player Ship
	var _new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	_new_angle = image_angle - angle_difference(image_angle, _new_angle);
	image_angle = lerp(image_angle, _new_angle, 0.05);

	// Fire Bullet
	// 60 Frames sind eine Sekunde
	// Bullet Feuerrate ist also eine 1/s
	bullet_counter ++;
	if(bullet_counter >= 60) {
		create_bullet(image_angle, obj_enemy_bullet, self.faction, self.id);
		bullet_counter = 0;
	}
}
else {
	image_angle = lerp(image_angle, direction, 0.05);
}