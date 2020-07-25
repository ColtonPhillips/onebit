if !directory_exists(working_directory + "screenshots")
{
	directory_create(working_directory + "screenshots")
}

// todo might bug out if overwriting files. add a 1 second buffer.
function SaveScreenshot() {
	var unique_string = date_get_second_of_year(date_current_datetime());
	var save_file = working_directory 
		+ "screenshots\\screen_"
		+ string(unique_string)
		+ ".png";
		
	screen_save(save_file);
	return save_file;
}