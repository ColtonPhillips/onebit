PresentTime += ((SimSpeed * SecondsPerTick) / SecondsPerDay);
if (keyboard_key_press(vk_up)) {
	SimSpeed += 1;	
}
if (keyboard_key_press(vk_down)) {
	SimSpeed -= 1;	
}