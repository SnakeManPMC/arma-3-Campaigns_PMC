
[
	player,
	[
		"t1"
	],
	[
		"Board the UH1 Huey helicopter",
		"Get in helo",
		"textmarker"
	],
		(getPosATL helo1),
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
		"Your objective is to recon the <marker name='target1'>dam</marker>. Use Support 0-8-1 when done.",
		"Recon dam",
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
		"t3"
	],
	[
		"Your objective is to recon the <marker name='target2'>airstrip</marker>. Use Support 0-8-2 when done.",
		"Recon airstrip",
		"textmarker"
	],
		(getMarkerPos "target2"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
