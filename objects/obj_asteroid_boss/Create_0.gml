// Inherit the parent event
event_inherited();

sprite_index = choose(
	spr_asteroid_s,
	spr_asteroid_m,
	spr_asteroid_l
);

rotation_speed = random_range(0.1, 0.3);
image_angle = irandom_range(0, 359);
image_xscale = 1.6;
image_yscale = 1.6;
direction = 0;
speed = 0;

damage = 1;