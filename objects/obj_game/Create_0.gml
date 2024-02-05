/// @description Global Game Variables
draw_set_font(fnt_text);
score = 0;
lives = 3;

enum FACTIONS {
	NEUTRAL,
	ALLY,
	ENEMY
}

enum POWERUPS {
	TWIN_SHOT,
	TRIP_SHOT,
	LASER,
	QUAD_SHOT,
	STAR_SHOT
}

fade_in = true;
fade_alpha = 1;
fade_speed = 0.016;