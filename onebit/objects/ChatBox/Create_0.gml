visible = false;

function Enable() {
	visible = true;
	Log(room_speed);
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

function PlayScript(strScript) {
	show_debug_message(strScript);
	Enable();
}
Timer.SetTimeout(Milliseconds(1000), function () { Enable();} );