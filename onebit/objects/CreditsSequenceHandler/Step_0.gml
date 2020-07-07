if Transition.GetState() == Transition.TransState.OFF
	&& Controls.GetAnyKey() 
{
		Transition.GotoRoom(RoomTitleScreen);
}