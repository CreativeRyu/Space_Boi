/// @description Hier Beschreibung einfügen
event_inherited();

fly_speed = 5;
camera_offset = 100;
image_xscale = 1.4;
image_yscale = 1.4;
image_index = 0;
image_speed = 0;
direction_input = 0;
max_hp = 3;
current_hp = max_hp;
player_lives = obj_game.life;

is_invincible = true;
invincibility_amount = 4;
guns = -1;
shield_on = 0;
shield_fade = false;
bullettype = obj_player_bullet;
exhaust_counter = 0;

alarm[0] = invincibility_amount * game_get_speed(gamespeed_fps);
alarm[1] = 1;