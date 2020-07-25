enum Mode {
	GUI,
	WORLD,
}

text = "";
color = Color.White;
alpha = 1;
font = Font.SmallChatBox;
mode = Mode.WORLD;
xscale = 1;
yscale = 1;
fadeoutspeed = 0;

function SetText(_s) {
	text = _s;
	return id;
}

function SetScale(_xscale, _yscale) {
	xscale = _xscale;
	yscale = _yscale;
	return id;
}

function SetFadeout(_fadeoutspeed) {
	fadeoutspeed = (1 / _fadeoutspeed ) / room_speed
	return id;
}

function SetColor(_c) {
	color = _c;
	return id;
}

function SetAlpha(_a) {
	alpha = _a;
	return id;
}

function SetMode(_mode) {
	mode = _mode;
	return id;
}

function SetFont(_font) {
	font = _font;
	return id;
}

function Draw() {
	var _f = draw_get_font();
	draw_set_font(font);
//	draw_text_color(x,y+1,text,Color.White, Color.White, Color.Black, Color.Black, alpha);
//	draw_text_color(x,y,text,color, color, color, color, alpha);
	//draw_text_ext()
		draw_text_transformed_colour(x, y, text, xscale, yscale, 0,
		color, color, color, color, alpha);
	draw_text_transformed_colour(x, y+yscale, text, xscale, yscale, 0,
		Color.White, Color.White, Color.Black, Color.Black, alpha);
	draw_set_font(_f);
}