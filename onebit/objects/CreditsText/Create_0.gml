/// @description Insert description here
// You can write your code in this editor
vspeed = -0.0666666666;
padding = 12 + 16;
text = "";
socialMode = false;
function Play(t) {
	text = t;
	draw_set_font(Font.LargeCredits);
	draw_set_color(Color.WarmRed);
	Log(string_width(t));
	x = padding;
	y = round(y);
	if string_length(t) > 0 {
	  if StringContains(t, "@") {
		  socialMode = true;
	  }
	}
}
c = random(0.3);
d = random(0.3);
