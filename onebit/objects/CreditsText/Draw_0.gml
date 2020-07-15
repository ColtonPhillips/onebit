draw_set_font(Font.LargeCredits);
draw_set_color(Color.WarmRed);
if (mode == "social") draw_set_color(c_blue);
if (mode == "business") draw_set_color(c_orange);
_x = round(round(x) + sin(c)*3);
_y = round(round(y) + sin(d)*0.7);
/*
draw_text(_x-1,_y,text);
draw_text(_x+1,_y,text);

draw_text(_x-2,_y,text);
draw_text(_x+2,_y,text);
draw_text(_x,_y-2,text);
draw_text(_x,_y+2,text);
draw_text(_x,_y+3,text);
draw_text(_x+1,_y+3,text);
draw_text(_x+1,_y+3,text);
draw_text(_x-1,_y+3,text);
*/

DrawTextSpiral(x,y,text,300);

draw_set_color(Color.Black);
if (mode == "social") draw_set_color(c_fuchsia);
if (mode == "business") draw_set_color(c_green);

draw_text(_x,_y,text);
draw_text(_x,_y+1,text);

draw_set_color(Color.White);
draw_text(_x,_y-1,text);