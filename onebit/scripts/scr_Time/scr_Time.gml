// Time functions
function Milliseconds(n) {
	return round(room_speed * (n/ 1000));
}
function Seconds(n) {
	return round(room_speed * n);	
}
function Minutes(n) {
	return round(room_speed * n * 60);	
}

function SetTimeout(time, funct) { 
	var t = instance_create_depth(0,0,0,TimerThread);
	t.Call(time, funct);
}
function SetInterval(time, funct) { 
	var t = instance_create_depth(0,0,0,TimerThread);
	t.CallInterval(time, funct);
}