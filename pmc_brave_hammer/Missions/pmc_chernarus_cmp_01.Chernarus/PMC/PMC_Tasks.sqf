
[
	player,
	[
		"t1"
	],
	[
		"Get here",
		"Get here",
		"textmarker"
	],
	(getMarkerPos "gethere"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
 
["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
