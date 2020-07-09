w = Game.Width; h = Game.Height;
bw = Game.BannerWidth;
blinderData = {
	left: {
		x1: 0, y1: 0, x2: bw, y2: h
	},
	right: {
		x1: w - bw, y1: 0, x2: w, y2: h
	},
	height: h,
	width: bw
};

left = blinderData.left;
right = blinderData.right;
black = Font.Black;
red = Font.WarmRed;