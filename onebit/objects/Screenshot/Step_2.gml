if Controls.GetScreenshotReleased() {
	var screenshotURL = SaveScreenshot();
	
	var t = GetTextInst(Game.BlinderWidth + 2, Game.Height - 10, 100)
		.SetColor(Color.White)
		.SetText(screenshotURL)
		.SetMode(Text.Mode.GUI)
		.SetFont(Font.LargeChatBox)
		.SetScale(0.4, 0.5)
		.SetAlpha(0.9)
		.SetFadeout(4);
	t.vspeed = -0.04;
	
	with (t) {
		SetTimeout(Seconds(4.5), function () {
			instance_destroy();
		});
	};
}