
function drop_powerup(_random_number){
switch _random_number {
	case 0:
		// Dub
		instance_create_layer(x, y, "Instances", obj_powerup_doubleshot);
		break;
	case 1:
		// Trip
		instance_create_layer(x, y, "Instances", obj_powerup_splitter);
		break;
	case 2:
		// Laser
		instance_create_layer(x, y, "Instances", obj_powerup_laser);
		break;
	case 3:
		// Quad
		instance_create_layer(x, y, "Instances", obj_powerup_quad);
		break;
	case 4:
		// Star
		instance_create_layer(x, y, "Instances", obj_powerup_star);
		break;
	case 5:
		// Shield
		instance_create_layer(x, y, "Instances", obj_powerup_shield);
		break;
	}
}