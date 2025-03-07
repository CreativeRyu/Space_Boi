// Wenn instanzen außerhalb des raumes gelöscht werden
// darf es keine Explosion und kein Powerup Spawn geben
if !point_in_rectangle(x, y, 0, 0, room_width + 10, room_height + 10) {
	exit;
}

var _random_number = irandom_range(0, 10);
drop_powerup(_random_number);

instance_create_layer(x, y, "Instances", obj_explosion_enemy);
repeat(20) {
	instance_create_layer(x, y, "Instances", obj_debris);
}
global.camera_shake = 4;
score += enemy_score;