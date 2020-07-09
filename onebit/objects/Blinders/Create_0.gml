w = 160; h = 128;
bw = 16;

blinderData = {
	left: {
		x1: 0, y1: 0, x2: bw, y2: h
	},
	right: {
		x1: w - bw, y1: 0, x2: w, y2: h
	}	
};

left = blinderData.left;
right = blinderData.right;
black = FontMap.Black;
red = FontMap.WarmRed;
// todo move
global.debug = true;