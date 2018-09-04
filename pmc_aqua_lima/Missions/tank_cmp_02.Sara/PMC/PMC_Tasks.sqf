
[
	west,
	[
		"t1"
	],
	[
		"Clear <marker name = 'target1'>target1</marker> objective.",
		"Target 1",
		"target1"
	],
	(getMarkerPos "target1"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t2"
	],
	[
		"Clear <marker name = 'target2'>target2</marker> objective.",
		"Target 2",
		"target2"
	],
	(getMarkerPos "target2"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
