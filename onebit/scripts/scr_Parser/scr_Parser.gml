function SplitString(str, delim){
	var slot = 0;
	var splits; //array to hold all splits
	var str2 = ""; //var to hold the current split we're working on building

	var i;
	for (i = 1; i < (string_length(str)+1); i++) {
	    var currStr = string_copy(str, i, 1);
	    if (currStr == delim) {
	        splits[slot] = str2; //add this split to the array of all splits
	        slot++;
	        str2 = "";
	    } else {
	        str2 = str2 + currStr;
	        splits[slot] = str2;
	    }
	}
	return splits;
}

/// @function                 TrimString(str);
/// @param {string}  str	  The string to trim, duh
/// @param {string}  char	  The delimiter
/// @param {string}  side	  both, left, or right
/// @description              return a string with optional trimming baby!
function TrimString(str) {
	var char = " ";
	var side = "both";
	if argument_count > 2 {
		char = argument[1];	
	}
	if argument_count > 3 {
		side = argument[2];	
	}

	var new_string = str;
	if side == "left" or side == "both" {
		var _start = 0;
		for (i=1; i <= string_length(new_string); i++) {
			if string_char_at(new_string, i) != char {
				_start = i - 1;
				break;
			}
		}
	
		if _start != 0 {
			new_string = string_delete(new_string, 1, _start);
		}
	}
	
	if side == "right" or side == "both" {
		var _end = 0;
		for(i=string_length(new_string); i > 0; i--) {
			if string_char_at(new_string, i) != char {
				_end = i + 1;
				break;
			}
		}
		if _end != 0 {
			new_string = string_delete(new_string, _end, string_length(new_string));
		}
	}
	return new_string;
}