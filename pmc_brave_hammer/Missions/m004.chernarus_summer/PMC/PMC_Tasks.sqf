
[
	player,
	[
		"t1"
	],
	[
		"Your objective is to defend airfield.",
		"Defend Airfield",
		"textmarker"
	],
	(getMarkerPos "target1"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
