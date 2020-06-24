realFudgyness += 0.04 + fudgeFactor;
if (realFudgyness > 1) {

	Camera.y += 1;

	my_sprite = layer_sprite_get_id(layer_get_id("TitleAssets"), "ColtonPhillipsPresents");
	title_y = layer_sprite_get_y(my_sprite);
	layer_sprite_y(my_sprite, title_y+1);
	if (shift_title) {
		layer_sprite_y(my_sprite, title_y+2);
		shift_title = false;
		alarm[1] = 50 + random_range(10,15);
	}
	realFudgyness -= 1;
	if (fading_in) {
		trans_alpha-= 0.05;
		trans_alpha = max(0,trans_alpha);
		layer_sprite_alpha(my_sprite, min(1, layer_sprite_get_alpha(my_sprite)+0.1));
	} else {
		trans_alpha+= 0.09;
		trans_alpha = min(1,trans_alpha);
		layer_sprite_alpha(my_sprite, layer_sprite_get_alpha(my_sprite)-0.11);
		}
	layer_sprite_alpha(my_sprite, layer_sprite_get_alpha(my_sprite)*0.995);
}
fudgeFactor*=0.985;