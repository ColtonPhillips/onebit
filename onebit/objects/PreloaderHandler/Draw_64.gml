if (fading_in) {
	draw_set_color(c_red);
	draw_set_alpha(trans_alpha);
	draw_rectangle(0,0,127,127,false);
} else {
	draw_set_color(c_black);
	draw_set_alpha(trans_alpha);
	draw_rectangle(0,0,127,127,false);
	draw_rectangle(0,0,127,127,false);
}
draw_set_color(c_black);