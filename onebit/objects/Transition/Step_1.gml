
// Starting a Transition Object
if mode != TransMode.OFF && state == TransState.OFF {
	state = TransState.PLAYING;
	// Create the object that will eventually call Transition.SetComplete();
	instance_create_layer(0,0,"Transition", targetTransition);
}

// Ending a Transition Object
if mode != TransMode.OFF && state == TransState.COMPLETE {
	state = TransState.OFF;
	if mode == TransMode.INTO {
		mode = TransMode.OFF;
	} else if mode == TransMode.NEXT {
		mode = TransMode.INTO;
		room_goto_next();
	} else if mode == TransMode.PREVIOUS {
		mode = TransMode.INTO;
		room_goto_previous();
	} else if mode == TransMode.GOTO {
		mode = TransMode.INTO;
		room_goto(targetRoom);
	} else if mode == TransMode.RESTART {
		mode = TransMode.INTO;
		room_restart();
	}	
}