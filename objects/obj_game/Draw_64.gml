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
#region Controller Debug
		//draw_set_font(fnt_debug)
		//var xx = 32;
		//var yy = 32;
		//for (var i = 0; i < 12; i++;)
		//{
		//if gamepad_is_connected(i)
		//    {
		//    draw_text(xx, yy, "Gamepad Slot - " + string(i));
		//    draw_text(xx, yy + 20, "Gamepad Type - " + string(gamepad_get_description(i)));
		//    draw_text(xx, yy + 40, "Left H Axis - " + string(gamepad_axis_value(i, gp_axislh)));
		//    draw_text(xx, yy + 60, "Left V Axis - " + string(gamepad_axis_value(i, gp_axislv)));
		//    draw_text(xx, yy + 80, "Right H Axis - " + string(gamepad_axis_value(i, gp_axisrh)));
		//    draw_text(xx, yy + 100, "Right V Axis - " + string(gamepad_axis_value(i, gp_axisrv)));
		//    draw_text(xx, yy + 120, "Fire Rate - " + string(gamepad_button_value(i, gp_shoulderrb)));
		//    yy += 160;
		//    }
		//else
		//    {
		//    draw_text(xx, yy, "Gamepad Slot - " + string(i));
		//    draw_text(xx, yy + 20, "Gamepad not connected" + string(gamepad_get_description(i)));
		//    yy += 64;
		//    }
		//if yy > room_height - 224
		//    {
		//    yy = 32;
		//    xx += 412;
		//    }
		//}
		break;
#endregion

	case rm_level_1:
	draw_set_font(fnt_text)
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
		global.camera_width/2 , 50, @"Level 1 
Complete", 1.7 , 1.7, 0,_gold,_silver,_silver,_gold,1);
	
		draw_set_font(fnt_text);	
		draw_text(global.camera_width/2, 380, @">> PRESS START FOR LEVEL 2 <<");			
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