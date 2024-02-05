/// @description Enemy Take Damage Event

hp -= 1;
if(hp <= 0) {
	instance_destroy();
}