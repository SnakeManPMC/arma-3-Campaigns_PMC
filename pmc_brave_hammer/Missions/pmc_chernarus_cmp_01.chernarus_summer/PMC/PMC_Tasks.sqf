
[
	player,
	[
		"t1"
	],
	[
		"Your objective is to recon <marker name='target1'>airfield</marker>.",
		"Recon Airfield",
		"textmarker"
	],
	(getMarkerPos "target1"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
 
[
	player,
	[
		"t2"
	],
	[
		"Get <marker name='gethere'>here</marker>.",
		"Get here",
		"textmarker"
	],
	(getMarkerPos "gethere"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
