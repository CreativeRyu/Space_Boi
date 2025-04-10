/// @description Fire Laser
create_bullet(image_angle, obj_enemy_bullet, self.faction, self.id);
audio_play_sound(snd_enemy_bullet, 1, false);

// Lasers sollen zufällig in einem bestimmten
// Zeitfenster geschossen werden
// dafür Zufalls Rangefunktion
alarm[0] = irandom_range(fire_rate_low, fire_rate_high);