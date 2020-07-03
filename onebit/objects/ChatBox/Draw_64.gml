// Draw background
draw_sprite(s_ChatBox, 0, 0, 0);

var profilex = 4; var profiley = 6;
draw_sprite(s_PlayerExpression, 3, profilex, profiley);


DrawSetFont(FontMap.SmallChatBox, FontMap.White);
var chatx = 35; var chaty = 4;
var maxwidth = 91; // seems to be perfect length
var longs = "A capitalist sends his regards. There is only three hundred of them. I.";

var fheight = string_height(longs);

var fheight2 = string_height_ext(longs,fheight, maxwidth);
 // 24 is perfect number, 32 is the bad
// show_debug_message(fheight2);
draw_text_ext(chatx, chaty, longs, fheight+1, maxwidth);


/*
// large emphasis text
var chatx1 = 36; var chaty1 = 6;

var chatx2 = chatx1-1; var chaty2 = chaty1 + 12;
var s1 = "There are many,"; // 15 max
var s2 = "degenerate scum"; // 15 max
draw_set_font(FontCRSoftsquareMono6);
draw_set_colour(c_white);
draw_text(chatx1, chaty1, s1 );
draw_text(chatx2, chaty2, s2 );
*/

/*
var chatx1 = 36; var chaty1 = 3;

var chatx2 = chatx1-2; var chaty2 = chaty1 + 9;
var chatx3 = chatx2; var chaty3 = chaty2 + 9;
var s1 = "There are many more";
var s2 = "men eating apple pies for";
var s3 = "us to enjoy watching em!";
draw_set_font(FontCRPinchMono6);
draw_set_colour(c_white);
draw_text(chatx1, chaty1, s1 );
draw_text(chatx2, chaty2, s2 );
draw_text(chatx3, chaty3, s3 );
*/ 
// well designed one