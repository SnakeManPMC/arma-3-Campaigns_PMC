
player createDiaryRecord ["Diary", ["Situation", "Enemy is advancing to our position."]];

// 2021-08-18
[
	player,
	[
		"t1"
	],
	[
		"Defend airbase against OPFOR attauck from EAST.",
		"Defend Airbase",
		"textmarker"
	],
	(getMarkerPos "defend"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
 
["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
