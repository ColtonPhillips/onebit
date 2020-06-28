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
	TRANSITIONING,
	COMPLETE,
}

mode = TransMode.OFF;
state = TransState.OFF;
targetRoom = room;
targetTransition = TransitionSimple;

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

function GetMode() {
	return mode;
}