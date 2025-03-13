/// @description Random Choice on Asteroids
event_inherited();

sprite_index = choose(
	spr_meteor_s,
	spr_meteor_m,
	spr_meteor_l
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
speed = 1;
image_xscale = 1.6;
image_yscale = 1.6;
damage = 1;