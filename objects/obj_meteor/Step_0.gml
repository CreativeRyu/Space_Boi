/// @description Asteroid Wrapper and Motion
move_wrap(true, true, sprite_width / 2);
image_angle += 0.2;

switch(sprite_index){
	case spr_meteor_l:
        damage = 2;
		break;
    
    case spr_meteor_m:
        damage = 1;
        break;
    
    case spr_meteor_s:
        damage = 1;
        break;
}