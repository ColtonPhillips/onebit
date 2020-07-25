if fadeoutspeed != 0  & alpha > 0 {
	alpha -= fadeoutspeed;
	alpha = max(0, alpha);
}