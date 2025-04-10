// Shake Screen for certain amount
// and a certain time
// shake_amount = argument0;
// shake_time = argument1;
function screen_shake(shake_amount, shake_time){
	shaker = instance_create_layer(0, 0, layer, obj_screenshake);
	with(shaker) {
		shaker_amount = shake_amount;
		alarm[0] = shake_time * 60;
	}
}