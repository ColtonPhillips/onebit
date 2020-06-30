var s = "Loading!"

draw_set_font(FontCRSoftsquare);
draw_set_colour(c_warmred);
var t=4; var v=6;
draw_text(t+1, v, s );
draw_text(t, v+1, s );
draw_text(t-1, v, s );
draw_text(t, v-1, s );
draw_text(t+1, v+1, s );
draw_text(t+1, v-1, s );
draw_text(t-1, v+1, s );
draw_text(t-1, v-1, s );
draw_set_colour(c_black);
draw_text(t, v, s );