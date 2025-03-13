/// @description Update Lives and position
// nachdem die Animation der Explosion beendet wurde
if (sprite_index == spr_explosion) {
	x = xstart;
	y = ystart;
	
	player_lives -= 1;
	if (player_lives <= 0) {
	// enter game over screen
	} 
	else {
		current_hp = max_hp;
		// falls das Level refreshed werden soll
		//instance_destroy(obj_enemy_scout_bossfight);
		//instance_destroy(obj_enemy_bullet);
		sprite_index = spr_ship;
		image_index = 0;
		image_speed = 0;
		image_xscale = 1.4;
		image_yscale = 1.4;
	}
}
