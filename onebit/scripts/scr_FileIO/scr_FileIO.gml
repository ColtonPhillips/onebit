function GetFileAsString(fileName) {
		var _file = file_text_open_read(fileName);
	var str = file_text_read_string(_file);
	file_text_close(_file);	
	return str;
}	