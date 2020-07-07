lay_id = layer_get_id("Background");
room_count = 0;
SetInterval(2, function () {
	layer_x(lay_id,  round(16 * cos(room_count)));
	room_count+= 0.023;
	layer_vspeed(lay_id, layer_get_vspeed(lay_id) + ( 0.01 * sign(cos(room_count))));
} );