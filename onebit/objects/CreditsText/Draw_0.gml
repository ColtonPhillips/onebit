/// @description Insert description here
// You can write your code in this editor
draw_set_font(FontMap.LargeCredits);
draw_set_color(FontMap.WarmRed);
if (socialMode) draw_set_color(c_blue);
_x = round(round(x) + sin(c)*3);
_y = round(round(y) + sin(d)*0.7);
draw_text(_x-1,_y,text);
draw_text(_x+1,_y,text);

draw_text(_x-2,_y,text);
draw_text(_x+2,_y,text);
draw_text(_x,_y-2,text);
draw_text(_x,_y+2,text);
draw_text(_x,_y+3,text);
draw_text(_x+1,_y+3,text);
draw_text(_x-1,_y+3,text);

draw_set_color(FontMap.Black);
if (socialMode) draw_set_color(c_fuchsia);
draw_text(_x,_y,text);
draw_text(_x,_y+1,text);

draw_set_color(FontMap.White);
draw_text(_x,_y-1,text);