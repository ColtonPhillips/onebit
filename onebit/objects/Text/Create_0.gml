enum Mode {
	GUI,
	WORLD,
}

text = "";
color = Color.White;
alpha = 1;
font = Font.SmallChatBox;
mode = Mode.WORLD;

bounce = true;
function SetText(_s) {
	text = _s;
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
	draw_text_color(x,y,text,color, color, color, color, alpha);
	draw_set_font(_f);
}