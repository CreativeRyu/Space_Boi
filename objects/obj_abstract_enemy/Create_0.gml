// Inherit the parent event
event_inherited();

speed = 2;
original_speed = 2;
direction = random_range(0, 359);
image_xscale = 1.4;
image_yscale = 1.4;
image_angle = direction;
bullettype = obj_enemy_bullet;

hp = 1;
enemy_score = 15;
bullet_counter = 0;

exhaust_counter = 0;