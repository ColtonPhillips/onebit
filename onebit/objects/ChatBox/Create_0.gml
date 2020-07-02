visible = true;

function Enable() {
	visible = true;	
}

function Disable() {
	visible = false;	
}

function ToggleEnable() {
	visible = !visible;	
}

font = FontMap.SmallChatBox;
color = FontMap.WarmRed;

function DrawSetFont(f, cl) {
	font = f;
	color = cl;
	draw_set_font(font);
	draw_set_colour(color);
}