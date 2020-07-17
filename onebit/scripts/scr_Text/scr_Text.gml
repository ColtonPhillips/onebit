function GetTextInst(_x, _y, _depth) {
	var inst = instance_create_depth(_x, _y, _depth, Text);	
	return inst;
}