draw_rectangle_color(left.x1, left.y1, left.x2, left.y2,
					black, black, black, black,
					false);
draw_rectangle_color(right.x1, right.y1, right.x2, right.y2,
					black, black, black, black,
					false);
	/*				
if global.debug {
	draw_rectangle_color(left.x1, left.y1, left.x2, left.y2,
						red, red, black, red,
						true);
						
	draw_rectangle_color(right.x1, right.y1, right.x2, right.y2,
						red, red, red, red,
						true);
						
}
*/

draw_sprite_stretched(s_BannerTest, 0, 0, 0, Game.BannerWidth+1, Game.Height);
draw_sprite_stretched(s_BannerTest, 0, Game.Width-Game.BannerWidth, 0, Game.BannerWidth+1, Game.Height);
