// Doing Earth Time for now

EpochTime = 0; // in Years
DaysInYear = 700;
FirstNewYears = 701; // 687 irl
// For now we'll just pretend NYE id SOlstice
Spring = 0; // jan
Summer = 700 * ( 1 / 4 )
Fall = 700 * ( 2 / 4 )
Winter = 700 * ( 3 / 4 )



// TODO: Load from save data, ya know?
Midnight = 0.75;
Sunset = 0.5;
Noon = 0.25;
Sunrise = 0.0;
PresentTime = FirstNewYears + Noon; // "Day" on Mars starts at Sunrise (~6 AM Earth Feel

function GetSeasonTime() {
	return (PresentTime % DaysInYear / DaysInYear);
	
}

// Pretending the universe is new for no reason (160 days)
RoomSpeed = room_speed;
MinutesPerDay = 1440;
SecondsPerTick = 1 / room_speed;
SecondsPerDay = 86400;

TicksPerMinute = RoomSpeed;

SimSpeed = 65.45;