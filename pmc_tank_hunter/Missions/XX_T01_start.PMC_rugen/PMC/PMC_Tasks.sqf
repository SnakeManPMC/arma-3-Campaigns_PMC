[
	player,
	[
		"t1"
	],
	[
		"You are to relax in your <marker name='start'>home town</marker>.",
		"Relaxing",
		"textmarker"
	],
	(getMarkerPos "start"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
 
["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
