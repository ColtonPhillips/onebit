alarm[0] = 130;
mode = Transition.GetMode();

if mode == Transition.TransMode.NEXT ||
	mode == Transition.TransMode.GOTO {
	percent = 0;
	fadeSpeed = 0.01;
}


if mode == Transition.TransMode.INTO {
	percent = 1;
	fadeSpeed = -0.01;
}

percent = clamp(percent, 0, 1);