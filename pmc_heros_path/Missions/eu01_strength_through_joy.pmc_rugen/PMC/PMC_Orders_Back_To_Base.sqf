// Gordon is radioed back to base
leader assault2 sideRadio "Rassault";

sleep 3;
["t0", "CANCELED"] call BIS_fnc_taskSetState;
sleep 5;

[
	player,
	[
		"t1"
	],
	[
		"Get back to <marker name='usbase'>base</marker>",
		"Get back to base",
		"usbase"
	],
	(getMarkerPos "usbase"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
