/// @description Draw Game Variables
var _silver = c_silver
var _gold = c_orange
var _sky = c_aqua;
var _red = c_red;

switch(room){
	case rm_start:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text_transformed_color(
			global.camera_width/2, 50, "SPACE BOI", 
			2, 2, 0, _silver, _silver, _silver, _sky, 1);
			
		draw_set_font(fnt_text);
		draw_text_transformed_color(		
			global.camera_width/2, 115, "starring Lieutenant Jay",
			1.2 , 1.2, 0,_sky,_silver,_silver,_sky, 1);
			
		if (fade_in) {
		    fade_alpha -= fade_speed; // Fade in
		    if (fade_alpha <= 0.2) {
		        fade_alpha = 0.2;
		        fade_in = false; // Switch to fade out when fully faded in
		    }
		} else {
		    fade_alpha += fade_speed; // Fade out
		    if (fade_alpha >= 1) {
		        fade_alpha = 1;
		        fade_in = true; // Switch to fade in when fully faded out
		    }
		}

		draw_text_color(global.camera_width/2,380, @">> PRESS START <<",c_white, c_aqua, c_aqua,c_white, fade_alpha);
		draw_set_halign(fa_left);
		break;

	// UI im ersten Level
	case rm_level_1:
		draw_set_font(fnt_text)
		// Draw Lives
		var _xx = 32;
		repeat(obj_ship.player_lives) {
			draw_sprite_ext(spr_ship, 0, _xx, 30 ,0.5, 0.5,0,c_white,1);
			_xx+= 25;
		}
		draw_healthbar(21, 52, 120, 60, (obj_ship.current_hp / obj_ship.max_hp) * 100, c_black, c_red, c_lime, 0, true, true); 
		draw_set_font(fnt_score_text);
		draw_text(20, 75, "Score: " + string(score));

		break;

	case rm_level_1_complete:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text_transformed_color(		
		global.camera_width/2 , 50, @"Level 1 
Complete", 1.7 , 1.7, 0,_gold,_silver,_silver,_gold,1);
	
		draw_set_font(fnt_text);	
		draw_text(global.camera_width/2, 380, @">> PRESS START FOR LEVEL 2 <<");			
		draw_set_halign(fa_left);
		break;
	// UI im zweiten Level
	case rm_level_2:
		_xx = 32;
		repeat(obj_ship.player_lives) {
			draw_sprite_ext(spr_ship, 0, _xx, 30 ,0.5, 0.5,0,c_white,1);
			_xx += 25;
		}
		// Healthbar anzeigen
		draw_healthbar(21, 52, 120, 60, (obj_ship.current_hp / obj_ship.max_hp) * 100, c_black, c_red, c_lime, 0, true, true); 
		draw_set_font(fnt_score_text);
		draw_text(20, 75, "Score: " + string(score));

		// Draw Enemy Count
		enemy_x = global.camera_width - 32;
		repeat(instance_number(obj_abstract_enemy)) {
			draw_sprite_ext(spr_enemy_hunter, 0, enemy_x, 26 ,0.4, 0.4,270,c_white,1);
			enemy_x -= 27;
		}

		break;
	// Raum UI nach Abschluss des zweiten Levels
	case rm_level_2_complete:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text_transformed_color(		
		global.camera_width/2 , 50, @"Level 2
Complete", 1.7 , 1.7, 0,_gold,_silver,_silver,_gold,1);
	
		draw_set_font(fnt_text);	
		draw_text(global.camera_width/2, 380, @">> PRESS START FOR LEVEL 3 <<");			
		draw_set_halign(fa_left);
		break;
	
	// UI im dritten Level
	case rm_level_3:	
		// Leben anzeigen
		_xx = 32;
		repeat(obj_ship_bossfight.player_lives) {
			draw_sprite_ext(spr_ship, 0, _xx, 30 ,0.5, 0.5,0,c_white,1);
			_xx+= 25;
		}
		// Healthbar anzeigen
		draw_healthbar(21, 52, 93, 60, (obj_ship_bossfight.current_hp / obj_ship_bossfight.max_hp) * 100, c_black, c_red, c_lime, 0, true, true);
		draw_set_font(fnt_score_text);
		draw_text(20, 75, "Score: " + string(score));

		// Draw Enemy Count
		enemy_x = global.camera_width - 32;
		repeat(instance_number(obj_abstract_enemy_bossfight)) {
			draw_sprite_ext(spr_enemy_hunter, 0, enemy_x, 26 ,0.4, 0.4,270,c_white,1);
			enemy_x -= 27;
		}

		break;

	case rm_win:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text_transformed_color(		
		global.camera_width/2 , 50, @"YOU'RE 
AWESOME", 1.7 , 1.7, 0,_gold,_silver,_silver,_gold,1);
		
		draw_set_font(fnt_text);
		draw_text_transformed_color(		
		global.camera_width/2, 190, "Thanks for Playing", 1.2 , 1.2, 0,_silver,_silver,_silver,_silver,1);
		
		draw_text(global.camera_width/2,380, @">> PRESS START TO REPLAY <<");			
		draw_set_halign(fa_left);
		break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text_transformed_color(		
		global.camera_width/2 , 50, "GAME OVER", 2 , 2, 0,_red,_silver,_silver,_red,1);
	
		draw_set_font(fnt_text);
		draw_text_transformed_color(		
			global.camera_width/2, 120, @"Save the World from Asteroids
and try again.",
			1.2 , 1.2, 0,_silver,_silver,_silver,_silver,1);
		
		draw_text_transformed_color(		
			global.camera_width/2, 220, "You're SCORE: " + string(score),
			1.1 , 1.1, 0,_silver,_silver,_silver,_silver,1);
		
		draw_text(global.camera_width/2,380, @">> PRESS START TO REPLAY <<");			
		draw_set_halign(fa_left);
		break;
}