timeoutFunc = function() {} 
function SetTimeout(time, funct) { 
	timeoutFunc = funct;
	var t = instance_create_depth(0,0,0,TimerThread);
	t.Call(time, funct);
}


