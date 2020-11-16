PresentTime += ((SimSpeed * SecondsPerTick) / SecondsPerDay);
if (keyboard_check_pressed(ord("3"))) {
	SimSpeed /= 2;	
}

if (keyboard_check_pressed(ord("4"))) {
	SimSpeed *= 2;	
}