draw_set_color(c_black);
var a = draw_get_alpha()
draw_set_alpha(percent);
draw_rectangle(0,0,Game.Width,Game.Height,false);
draw_set_alpha(a);