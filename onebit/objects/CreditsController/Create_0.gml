creditsString = @'

Story by:
   Colton Phillips
   @ColtonJPhillips

Code, Art & Design:
   Colton Phillips

Additional Art by:
   Rose D.G.
   @RoseCuddles
   
Special Thanks:
   Cody Phillips
';

creditsPosX = 0;
creditsPosY = 140;
creditsLines = [];
count = 0;
function ParseCredits(str) {
	creditsLines =	SplitString(
							TrimString(str, " \r\n")
						, "\n");
	Log(creditsLines);
	
	for (var i = 0; i < array_length(creditsLines); i++) {
		SetTimeout(room_speed + Seconds(i*2.5), 
			function () {
				var inst = instance_create_depth(creditsPosX, creditsPosY, depth-count, CreditsText);
				inst.Play(creditsLines[count]);
				count++;
			});	
	}
}

ParseCredits(creditsString);
