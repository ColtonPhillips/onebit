if !directory_exists(working_directory + "\screenshots")
{
	directory_create(working_directory + "\screenshots")
}

// todo might bug out if overwriting files. add a 1 second buffer.
function SaveScreenshot() {
	var unique_string = date_get_second_of_year(date_current_datetime());
	Log(working_directory + "\screenshots\\screen_"
		+string(unique_string)+".png");
		
	screen_save(working_directory + "\screenshots\\screen_"
		+string(unique_string)+"-full.png");
	
	// todo: these would be cool, to just output the middle frame
	// but it is in view-space x and y, which i dont have setup yet really
	/*screen_save_part(working_directory + "\screenshots\\screen_"
		+string(unique_string)+".png", Game.BlinderWidth+1, 
		1, Game.GameWindowWidth-1, Game.GameWindowHeight);*/
}