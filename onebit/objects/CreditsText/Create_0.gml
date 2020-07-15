/// @description Insert description here
// You can write your code in this editor
vspeed = -0.0666666666;
padding = 12 + 16;
text = "";
mode = "normal";
function Play(t) {
	text = t;
	draw_set_font(Font.LargeCredits);
	draw_set_color(Color.WarmRed);
	Log(string_width(t));
	x = padding;
	y = round(y);
	if string_length(t) > 0 {
	  if StringContains(t, "@") {
		  mode = "social";
	  }
	if StringContains(t, "#") {
		mode = "business";
		text = string_replace(text,"#","");
	}
	}
}
c = random(0.3);
d = random(0.3);


function DrawTextSpiral(x, y, text, count) {
	maxc = 24; count = min(maxc, count);
	xstep = [0,	0,	-1,	-1,	-1,	0,	1,	1,	1,
		0,	-1,	-2,	-2,	-2,	-2,	-2,	-1,	0,	1,	2,	2,	2,	2,	2,	-1];
	ystep = [0,	-1,	-1,	0,	1,	1,	1,	0,	-1,
		-2,	-2,-2,	-1,	0,	1,	2,	2,	2,	2,	2,	1,	0,	-1,	-2,	-2];
	
	for (var i = 0; i < count; i++) {
		draw_text(x+xstep[i], y+ystep[i],text);
	}
}