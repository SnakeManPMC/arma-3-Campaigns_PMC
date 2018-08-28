
// random weather for SINGLE PLAYER (PMC Campaigns mostly)

private _Overcast_Random_Amount = _this select 0;

0 setOvercast (random _Overcast_Random_Amount);
forceWeatherChange;

// this is run on server only
[_Overcast_Random_Amount] spawn
{
	private
	[
		"_duration",
		"_ForeCast",
		"_minimum_change_time",
		"_Overcast_Random_Amount"
	];

	_Overcast_Random_Amount = _this select 0;

	sleep 1;

	call compile preProcessFileLineNumbers "PMC\PMC_weather_to_string.sqf";

	while {true} do
	{
		_duration = random (60 * 60 * 1.5);
		_minimum_change_time = (60 * 3) + random (60 * 10);

		PMC_WeatherChangeTime = _minimum_change_time;

		PMC_do_overcast = random _Overcast_Random_Amount;

		_ForeCast = [PMC_do_overcast] call PMC_weather_to_string;

		PMC_Weather_forecast = format
		[
			"Weather report: %1, change time %2 min, duration %3 min.",
			_ForeCast,
			(floor (PMC_WeatherChangeTime / 60)),
			(floor (_duration / 60))
		];
		PMC_WeatherChangeTime setOvercast PMC_do_overcast;

		PMCHQ sideChat PMC_Weather_forecast;
		sleep (PMC_WeatherChangeTime + _duration);
	};
};
