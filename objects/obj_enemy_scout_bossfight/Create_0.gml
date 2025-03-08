
// Inherit the parent event
event_inherited();
image_xscale = 1.6;
image_yscale = 1.6;
fly_speed = 2;
fire_rate_low = 30;
fire_rate_high = 90;

alarm[0] = irandom_range(fire_rate_low, fire_rate_high);

move_towards_point(irandom(room_width), room_height, fly_speed);