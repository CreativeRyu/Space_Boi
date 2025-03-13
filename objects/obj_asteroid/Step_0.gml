/// @description Erben und Schaden bestimmen

// Inherit the parent event
event_inherited();

switch(sprite_index){
	case spr_asteroid_l:
        damage = 2;
		break;
    
    case spr_asteroid_m:
        damage = 1;
        break;
    
    case spr_asteroid_s:
        damage = 1;
        break;
}