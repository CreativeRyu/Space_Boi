/// @description Spawn an Enemy
if (instance_number(obj_abstract_enemy_bossfight) < max_enemies) {
	instance_create_layer(irandom(room_width), 25, layer, obj_enemy_scout_bossfight);
}

alarm[0] = irandom_range(spawn_rate_min, spawn_rate_max);