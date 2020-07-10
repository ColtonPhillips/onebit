visible = false;
function SetVisible() { visible = true; }
function SetInvisible() { visible = false; }
function ToggleVisibility() { visible = !visible; }

font = Font.SmallChatBox;
color = Color.WarmRed;

function DrawSetFont(f, cl) {
	font = f;
	color = cl;
	draw_set_font(font);
	draw_set_colour(color);
}

// Parser data needed for rendering script
panelText = "";

function ParseConversation(str) {
	var scriptLines =	SplitString(
							TrimString(str, " \r\n")
						, "\n");
	Log(scriptLines);
	panelText = scriptLines[0];
}

SetTimeout(Milliseconds(1000), function () {
_str = @'

First thing we do is have a major new feature in a wacky way! Using all!
And then we find the...
Batman!  

';
	ParseConversation(_str); } );

function DebugDrawPanelTest() {
	DrawSetFont(Font.SmallChatBox, Font.White);
	var chatx = 35; var chaty = 4;
	var maxwidth = 91; // seems to be perfect length
	var fheight = string_height(panelText);
	var fheight2 = string_height_ext(panelText,fheight, maxwidth);
	 // 24 is perfect number, 32 is the bad
	// show_debug_message(fheight2);
	draw_text_ext(chatx, chaty, panelText, fheight+1, maxwidth);
}