enum TransMode {
   OFF,
   PREVIOUS,
   NEXT,
   GOTO,
   INTO,
   RESTART
}

enum TransState {
	OFF,
	PLAYING,
	COMPLETE,
}

mode = TransMode.INTO;
state = TransState.OFF;
targetRoom = room;
targetTransition = TransitionSimple;

function GetMode() {
	return mode;	
}

function GetState() {
	return state;
}

function CompleteTransition() {
	state = TransState.COMPLETE;	
}

function GotoNext() {
	mode = TransMode.NEXT;	
}

function SetTransitionObject(obj) {
	targetTransition = obj;
}

function SetRoom(r) {
	targetRoom = r;	
}