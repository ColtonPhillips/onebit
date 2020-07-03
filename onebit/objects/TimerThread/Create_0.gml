callingMethod = function () {};
time = 0;

function Call(time, funct) {
		callingMethod = funct;
		alarm[0] = time;
}

function CallInterval(timeIn, funct) {
		callingMethod = funct;
		alarm[1] = timeIn;
		time = timeIn;
}

function Destroy() {
	instance_destroy();	
}