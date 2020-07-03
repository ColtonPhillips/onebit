visible = false;

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

function PlayScript(strScript) {
	show_debug_message(strScript);
	Enable();
}

function DoIt(str) {
	var testScript = "  First# we need to keep it rather simple. Then make things harder.";
	var testArray = SplitString(TrimString(testScript), " ");
	Log(testArray);
}

Timer.SetTimeout(Milliseconds(1000), function () { Enable(); DoIt(); } );