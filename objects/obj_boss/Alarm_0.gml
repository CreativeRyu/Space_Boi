/// @description Boss Regular Movement
if(x >=  room_width / 2) {
    move_towards_point(0, y, fly_speed);
}
else {
    move_towards_point(room_width, y, fly_speed);
}