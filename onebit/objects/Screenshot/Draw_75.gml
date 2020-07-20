

if Controls.GetScreenshotReleased() {
	SaveScreenshot();
	
	var t = GetTextInst(2, Game.Height - 10, 100)
		.SetColor(Color.WarmRed)
		.SetText("Screenshot Saved...")
		.SetMode(Text.Mode.GUI)
		.SetFont(Font.LargeChatBox)
		.SetAlpha(0.9);
	t.vspeed = -0.1;
	
	with (t) {
		SetTimeout(Seconds(2), function () {
			instance_destroy();
		});
	};
}