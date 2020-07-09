draw_rectangle_color(left.x1, left.y1, left.x2, left.y2,
					red, black, red, black,
					false);
draw_rectangle_color(right.x1, right.y1, right.x2, right.y2,
					black, red, black, red,
					false);
					
if global.debug {
	draw_rectangle_color(left.x1, left.y1, left.x2, left.y2,
						red, red, black, red,
						true);
						
	draw_rectangle_color(right.x1, right.y1, right.x2, right.y2,
						red, red, red, red,
						true);
						
}