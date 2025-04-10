/// @description bring the boss in

if (obj_ship_bossfight.y <= boss_trigger_y) {
	instance_create_layer(room_width / 2, 20, layer, obj_boss);
}

else {
	alarm[1] = 60;
}