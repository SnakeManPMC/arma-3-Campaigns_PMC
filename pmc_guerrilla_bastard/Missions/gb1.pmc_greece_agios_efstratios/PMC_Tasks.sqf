
[
	west,
	[
		"t1"
	],
	[
		"",
		"",
		""
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
