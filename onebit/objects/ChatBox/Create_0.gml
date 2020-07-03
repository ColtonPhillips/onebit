visible = false;
function SetVisible() { visible = true; }
function SetInvisible() { visible = false; }
function ToggleVisibility() { visible = !visible; }

font = FontMap.SmallChatBox;
color = FontMap.WarmRed;

function DrawSetFont(f, cl) {
	font = f;
	color = cl;
	draw_set_font(font);
	draw_set_colour(color);
}

// Parser data needed for rendering script
panelText = "";

function ParseConversation(str) {
	str = "  First# we need to keep it rather simple.\n Then make things harder.";
	var scriptLines = SplitString(TrimString(str), "\n");
	Log(scriptLines);
	
	str = GetFileAsString("test.txt");
	scriptLines = SplitString(TrimString(str), "\n");
	Log(scriptLines);
	// test set stuff here
	panelText = scriptLines[0];
	
}

SetTimeout(Milliseconds(1000), function () { SetVisible(); ParseConversation("A"); } );

function DebugDrawPanelTest() {
	DrawSetFont(FontMap.SmallChatBox, FontMap.White);
	var chatx = 35; var chaty = 4;
	var maxwidth = 91; // seems to be perfect length
	var fheight = string_height(panelText);
	var fheight2 = string_height_ext(panelText,fheight, maxwidth);
	 // 24 is perfect number, 32 is the bad
	// show_debug_message(fheight2);
	draw_text_ext(chatx, chaty, panelText, fheight+1, maxwidth);
}