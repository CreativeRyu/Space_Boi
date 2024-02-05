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
			global.camera_width/2, 25, "SPACE BOI", 
			2, 2, 0, _silver, _silver, _silver, _sky, 1);
			
		draw_set_font(fnt_text);
		draw_text_transformed_color(		
			global.camera_width/2, 85, "starring Lieutenant Jay",
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

		draw_text_color(global.camera_width/2,300, @">> PRESS START <<",c_white, c_aqua, c_aqua,c_white, fade_alpha);
		draw_set_halign(fa_left);
		break;


	case rm_level_1:
		draw_text(20, 20, "LIVES: ")
		draw_text(20, 50, "SCORE: " + string(score))
		var _xx = 130;
		repeat(lives) {
			draw_sprite_ext(spr_ship, 0, _xx, 30 ,0.5, 0.5,0,c_white,1);
			_xx+= 25;
		}

		break;

	case rm_level_1_complete:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text_transformed_color(		
		global.camera_width/2 , 25, @"Level 1 
Complete", 1.7 , 1.7, 0,_gold,_silver,_silver,_gold,1);
	
		draw_set_font(fnt_text);	
		draw_text(global.camera_width/2, 280, @">> PRESS START FOR LEVEL 2 <<");			
		draw_set_halign(fa_left);
		break;

	case rm_level_2:	
		draw_text(20, 20, "LIVES: ")
		draw_text(20, 50, "SCORE: " + string(score))
		_xx = 130;
		repeat(lives) {
			draw_sprite_ext(spr_ship, 0, _xx, 30 ,0.5, 0.5,0,c_white,1);
			_xx+= 25;
		}
		draw_text(20, 80, "ENEMIES: " + string(instance_number(obj_abstract_enemy)));

		break;

	case rm_win:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text_transformed_color(		
		global.camera_width/2 , 25, @"YOU'RE 
AWESOME", 1.7 , 1.7, 0,_gold,_silver,_silver,_gold,1);
		
		draw_set_font(fnt_text);
		draw_text_transformed_color(		
		global.camera_width/2, 170, "Thanks for Playing", 1.2 , 1.2, 0,_silver,_silver,_silver,_silver,1);
		
		draw_text(global.camera_width/2,280, @">> PRESS START TO REPLAY <<");			
		draw_set_halign(fa_left);
		break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text_transformed_color(		
		global.camera_width/2 , 20, "GAME OVER", 2 , 2, 0,_red,_silver,_silver,_red,1);
	
		draw_set_font(fnt_text);
		draw_text_transformed_color(		
			global.camera_width/2, 100, @"Save the World from Asteroids
and try again.",
			1.2 , 1.2, 0,_silver,_silver,_silver,_silver,1);
		
		draw_text_transformed_color(		
			global.camera_width/2, 190, "You're SCORE: " + string(score),
			1.1 , 1.1, 0,_silver,_silver,_silver,_silver,1);
		
		draw_text(global.camera_width/2, 270, @">> PRESS START TO REPLAY <<");			
		draw_set_halign(fa_left);
		break;
}