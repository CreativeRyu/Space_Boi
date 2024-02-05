/// @description Hier Beschreibung einfügen

// Draw Player itself mit allen eigenschaften
draw_self();

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

// Shield
if(obj_ship.shield_on){
	var _alpha;
	if(obj_ship.shield_fade) {
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