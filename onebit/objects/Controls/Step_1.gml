ProcessBeginStep();

// Check all buttons (down)
if keyboard_check(left_buttons[0]) || keyboard_check(left_buttons[1]) {
	left = true;
}
if keyboard_check(down_buttons[0]) || keyboard_check(down_buttons[1]) {
	down = true;
}
if keyboard_check(right_buttons[0]) || keyboard_check(right_buttons[1]) {
	right = true;
}
if keyboard_check(up_buttons[0]) || keyboard_check(up_buttons[1]) {
	up = true;
}
if keyboard_check(jump_buttons[0]) || keyboard_check(jump_buttons[1]) {
	jump = true;
}

if left | down | right | up | jump {
	anykey = true;	
}

// Pressed
if keyboard_check_pressed(left_buttons[0]) || keyboard_check_pressed(left_buttons[1]) {
	left_pressed = true;
}
if keyboard_check_pressed(down_buttons[0]) || keyboard_check_pressed(down_buttons[1]) {
	down_pressed = true;
}
if keyboard_check_pressed(right_buttons[0]) || keyboard_check_pressed(right_buttons[1]) {
	right_pressed = true;
}
if keyboard_check_pressed(up_buttons[0]) || keyboard_check_pressed(up_buttons[1]) {
	up_pressed = true;
}
if keyboard_check_pressed(jump_buttons[0]) || keyboard_check_pressed(jump_buttons[1]) {
	jump_pressed = true;
}

// Released
if keyboard_check_released(left_buttons[0]) || keyboard_check_released(left_buttons[1]) {
	left_released = true;
}
if keyboard_check_released(down_buttons[0]) || keyboard_check_released(down_buttons[1]) {
	down_released = true;
}
if keyboard_check_released(right_buttons[0]) || keyboard_check_released(right_buttons[1]) {
	right_released = true;
}
if keyboard_check_released(up_buttons[0]) || keyboard_check_released(up_buttons[1]) {
	up_released = true;
}
if keyboard_check_released(jump_buttons[0]) || keyboard_check_released(jump_buttons[1]) {
	jump_released = true;
}