/// @description Bullet Behaviour

function create_gun(_direction, _guntype, _bullettype, _faction, _creator){
	var _bullet_angle;
	var _i;
	var _sep 
	
	switch(_guntype) {
		case POWERUPS.TWIN_SHOT:
			audio_play_sound(snd_2bullets, 1, false);
			_sep = 12;
			_x = x + lengthdir_x(_sep, _direction + 90)
			_y = y + lengthdir_y(_sep, _direction + 90)
			create_bullet(_direction, _bullettype, _faction, _creator, _x, _y)
			
			_x = x + lengthdir_x(_sep, _direction - 90)
			_y = y + lengthdir_y(_sep, _direction - 90)
			create_bullet(_direction, _bullettype, _faction, _creator, _x, _y)
			
			break;
			
		case POWERUPS.TRIP_SHOT:
			audio_play_sound(snd_2bullets, 1, false);
			for(_i = -30; _i <= 30; _i =_i + 30){	
				create_bullet(_direction + _i, _bullettype, _faction, _creator)
			}
			
			break;
		case POWERUPS.LASER:
			audio_play_sound(snd_laser, 1, false);		
			create_laser(_direction, _bullettype, _faction, _creator)
					
			break;


		case POWERUPS.QUAD_SHOT:
			audio_play_sound(snd_2bullets, 1, false);
			_sep = 0;
			_i = 0;
			repeat(4){
				_bullet_angle = _direction + (_i * 90);
				_x = x + lengthdir_x(_sep, _bullet_angle + 90);
				_y = y + lengthdir_y(_sep, _bullet_angle + 90);
				create_bullet(_bullet_angle + _i, _bullettype, _faction, _creator, _x, _y);
				_i++;
			}		
			break;
			
		case POWERUPS.STAR_SHOT:
			audio_play_sound(snd_2bullets, 1, false);
	
			_sep = 0;
			_i = 0;
			repeat(8){
				_bullet_angle = _direction + (_i * 45);
				_x = x + lengthdir_x(_sep, _bullet_angle + 45);
				_y = y + lengthdir_y(_sep, _bullet_angle + 45);
				create_bullet(_bullet_angle + _i, _bullettype, _faction, _creator, _x, _y);
				_i++;
			}
			break;
			
		default:
			audio_play_sound(snd_2bullets, 1, false);
			create_bullet(_direction, _bullettype, _faction, _creator)
			break;
	}
}

function create_bullet(_direction, _bullettype, _faction, _creator, _bullet_x = undefined, _bullet_y = undefined){
	var _bullet;
	if(_bullet_x != undefined){
		_bullet	= instance_create_layer(_bullet_x, _bullet_y, "Instances", _bullettype);
	} else {
		_bullet = instance_create_layer(x, y, "Instances", _bullettype);
	}
	if(_bullettype == obj_enemy_bullet) {
		audio_play_sound(snd_bullet, 1, false);
	}
	with(_bullet) {
		direction = _direction;
		image_angle = _direction - 90;
		faction = _faction;
		creator = _creator;
	}
}

function create_laser(_direction, _bullettype, _faction, _creator){
	var _laser = instance_create_layer(x, y, "Instances", obj_laser);
			with(_laser) {
			direction = _direction;
			image_angle = _direction;
			faction = _faction;
			creator = _creator;
		
			if(faction == FACTIONS.ALLY) image_blend = c_aqua;
			else if (faction == FACTIONS.ENEMY) image_blend = c_red;
	}
}