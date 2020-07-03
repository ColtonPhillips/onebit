function Milliseconds(n) {
	// convert # of mill into # of frames
	return round(room_speed * (n/ 1000));
}