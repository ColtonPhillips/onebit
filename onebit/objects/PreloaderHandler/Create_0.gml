alarm[0] = 600;
alarm[1] = 50;
alarm[2] = 300;

fudgeFactor = 0.39;
realFudgyness = 0;
shift_title = false;
fading_in = true;

my_sprite = layer_sprite_get_id(layer_get_id("TitleAssets"), "ColtonPhillipsPresents");
layer_sprite_alpha(my_sprite, 0);
trans_alpha = 0.75;