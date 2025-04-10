/// @description Boss Create Event
event_inherited();
max_health = 50;
current_health = max_health;
enemy_score = 100;
fly_speed = 4;

move_towards_point(room_width / 2, 500, fly_speed);

alarm[0] = 180;

screen_shake(1.5, 3.5);
audio_play_sound(snd_boss_incoming, 1, false);