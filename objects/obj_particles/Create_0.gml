/// @description Erstellung Partikel System
part_sys = part_system_create();

// Exhaust Player
part_type_exhaust = part_type_create();
part_type_shape(part_type_exhaust,pt_shape_smoke);
part_type_size(part_type_exhaust, .2, .2, 0.02, 0);
part_type_color3(part_type_exhaust, c_white, c_aqua, c_blue);
part_type_alpha3(part_type_exhaust, 1, 1, 0);
part_type_life(part_type_exhaust, 20, 20);

// Exhaust Enemy
part_type_enemy_exhaust = part_type_create();
part_type_shape(part_type_enemy_exhaust,pt_shape_smoke);
part_type_size(part_type_enemy_exhaust, .2, .2, 0.02, 0);
part_type_color3(part_type_enemy_exhaust, c_yellow, c_orange, c_red);
part_type_alpha3(part_type_enemy_exhaust, 1, 1, 0);
part_type_life(part_type_enemy_exhaust, 20, 20);

// Meteor Debris L
part_type_meteor_debris = part_type_create();
part_type_sprite(part_type_meteor_debris, spr_meteor_debris_l, false, false, true);
part_type_alpha3(part_type_meteor_debris, 0.6, 0.6, 0);
part_type_life(part_type_meteor_debris, 60, 80);
part_type_direction(part_type_meteor_debris, 0, 359, 0, false);
part_type_orientation(part_type_meteor_debris, 0, 359, 1, false, false);
part_type_speed(part_type_meteor_debris, 2, 2.4, -0.02,0);

// Meteor Debris M
part_type_meteor_debris_m = part_type_create();
part_type_sprite(part_type_meteor_debris_m, spr_meteor_debris_m, false, false, true);
part_type_alpha3(part_type_meteor_debris_m, 0.6, 0.6, 0);
part_type_life(part_type_meteor_debris_m, 60, 80);
part_type_direction(part_type_meteor_debris_m, 0, 359, 0, false);
part_type_orientation(part_type_meteor_debris_m, 0, 359, 1, false, false);
part_type_speed(part_type_meteor_debris_m, 2, 2.4, -0.02,0);

// Asteroid Debris L
part_type_asteroid_debris = part_type_create();
part_type_sprite(part_type_asteroid_debris, spr_asteroid_debris_l, false, false, true);
part_type_alpha3(part_type_asteroid_debris, 0.6, 0.6, 0);
part_type_life(part_type_asteroid_debris, 60, 80);
part_type_direction(part_type_asteroid_debris, 0, 359, 0, false);
part_type_orientation(part_type_asteroid_debris, 0, 359, 1, false, false);
part_type_speed(part_type_asteroid_debris, 2, 2.4, -0.02,0);

// Asteroid Debirs M
part_type_asteroid_debris_m = part_type_create();
part_type_sprite(part_type_asteroid_debris_m, spr_asteroid_debris_m, false, false, true);
part_type_alpha3(part_type_asteroid_debris_m, 0.6, 0.6, 0);
part_type_life(part_type_asteroid_debris_m, 60, 80);
part_type_direction(part_type_asteroid_debris_m, 0, 359, 0, false);
part_type_orientation(part_type_asteroid_debris_m, 0, 359, 1, false, false);
part_type_speed(part_type_asteroid_debris_m, 2, 2.4, -0.02,0);