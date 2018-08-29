
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
		"_Overcast_Random_Amount",
		"_PMC_WeatherChangeTime",
		"_PMC_do_overcast"
	];

	_Overcast_Random_Amount = _this select 0;

	sleep 1;

	call compile preProcessFileLineNumbers "PMC\PMC_weather_to_string.sqf";

	while {true} do
	{
		_duration = random (60 * 7);
		_minimum_change_time = (60 * 3) + random (60 * 10);

		_PMC_WeatherChangeTime = _minimum_change_time;

		_PMC_do_overcast = random _Overcast_Random_Amount;

		_ForeCast = [_PMC_do_overcast] call PMC_weather_to_string;

		PMC_Weather_forecast = format
		[
			"Weather report: %1, change time %2 min, duration %3 min.",
			_ForeCast,
			(floor (_PMC_WeatherChangeTime / 60)),
			(floor (_duration / 60))
		];
		_PMC_WeatherChangeTime setOvercast _PMC_do_overcast;

		PMCHQ sideChat PMC_Weather_forecast;
		sleep (_PMC_WeatherChangeTime + _duration);
	};
};
