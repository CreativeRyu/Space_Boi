/// @description Spawn Enemy Waves
if (obj_ship_bossfight.y <= 6200 && enemy_waves == 0) {
	instance_create_layer(room_width / 2 -100, 5700, layer, obj_enemy_scout_bossfight);
	instance_create_layer(room_width / 2 +100, 5700, layer, obj_enemy_scout_bossfight);

	enemy_waves = 1;
}
else if (obj_ship_bossfight.y <= 5700 && enemy_waves == 1) {
	instance_create_layer(room_width / 2 -150, 5200, layer, obj_enemy_scout_bossfight);
	instance_create_layer(room_width / 2, 5100, layer, obj_enemy_scout_bossfight);
	instance_create_layer(room_width / 2 +150, 5200, layer, obj_enemy_scout_bossfight);

	enemy_waves = 2;
}
else if (obj_ship_bossfight.y <= 5200 && enemy_waves == 2) {
	instance_create_layer(room_width / 2 -150, 4600, layer, obj_enemy_scout_bossfight);
	instance_create_layer(room_width / 2 -150, 4750, layer, obj_enemy_scout_bossfight);
	instance_create_layer(room_width / 2 +150, 4600, layer, obj_enemy_scout_bossfight);
	instance_create_layer(room_width / 2 +150, 4750, layer, obj_enemy_scout_bossfight);

	enemy_waves = 3;
}
else if (obj_ship_bossfight.y <= 4700 && enemy_waves == 3) {
	instance_create_layer(room_width / 2, 4200, layer, obj_enemy_hunter_bossfight);
	instance_create_layer(room_width / 2 -300, 4150, layer, obj_enemy_scout_bossfight);
	instance_create_layer(room_width / 2 +300, 4150, layer, obj_enemy_scout_bossfight);

	enemy_waves = 4;
}

else {
	
}
