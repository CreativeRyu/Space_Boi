/// @description Ship Draw Event

// Draw Player itself mit allen eigenschaften
draw_self();
if(sprite_index == spr_ship) {

// Draw Gun Equip on ship
if(guns != -1) draw_sprite_ext(
	spr_ship_powerups,
	guns, x, y,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

// Display Front Thrusters on backward Movement
if(direction_input == "down") {
	draw_sprite(spr_thruster, 0, bbox_left - 1, bbox_top + 34); // Left Thruster
	draw_sprite(spr_thruster, 0, bbox_right + 1 , bbox_top + 34); // Right Thruster
}

// Shield
if(obj_ship_bossfight.shield_on){
	var _alpha;
	if(obj_ship_bossfight.shield_fade) {
		_alpha = min(0.6,alarm[2]/60);
	} else {
		_alpha = 0.6;
	}

	draw_sprite_ext(
	spr_shield,
	-1, x, y,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	_alpha
	);
}

}