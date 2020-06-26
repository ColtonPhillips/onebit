// key mappings
left_buttons	= [ ord("A"), vk_left ];
down_buttons	= [ ord("S"), vk_down ];
right_buttons	= [ ord("D"), vk_right ];
up_buttons		= [ ord("W"), vk_up ];
jump_buttons	= [ vk_lshift, vk_space ];

player = Player; // in case i want this to be usable on any object and need actor state info

function ResetButtons() {
	left	= false;
	down	= false;
	right	= false;
	up		= false;
	jump	= false;
	
	left_pressed	= false;
	down_pressed	= false;
	right_pressed	= false;
	up_pressed		= false;
	jump_pressed	= false;
	
	left_released	= false;
	down_released	= false;
	right_released	= false;
	up_released		= false;
	jump_released	= false;
	
	anykey	= false;	
}

// Set it all up now
ResetButtons();

// Called once, in Begin Step, before player needs to read it.
function ProcessBeginStep() {
	ResetButtons();
}

function GetLeft() {
	return left;
}

function GetDown() {
	return down;	
}

function GetRight() {
	return right;	
}

function GetUp() {
	return up;	
}

function GetJump() {
	return jump;	
}

function GetAnyKey() {
	return anykey;	
}

function GetLeftPressed() {
	return left_pressed;
}

function GetDownPressed() {
	return down_pressed;	
}

function GetRightPressed() {
	return right_pressed;	
}

function GetUpPressed() {
	return up_pressed;	
}

function GetJumpPressed() {
	return jump_pressed;	
}

function GetLeftReleased() {
	return left_released;
}

function GetDownReleased() {
	return down_released;	
}

function GetRightReleased() {
	return right_released;	
}

function GetUpReleased() {
	return up_released;	
}

function GetJumpReleased() {
	return jump_released;	
}