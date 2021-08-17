
[
	west,
	[
		"t1"
	],
	[
		"Your objective is to capture airfield.",
		"Capture Airfield",
		"text"
	],
	(getMarkerPos "target1"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
