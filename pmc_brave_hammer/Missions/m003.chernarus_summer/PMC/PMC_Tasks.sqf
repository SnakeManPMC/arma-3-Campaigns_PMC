
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

[
	west,
	[
		"t1_child1",
		"t1"
	],
	[
		"T1 Child Objective 1.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child1'>this</marker> location.",
		"T1 Child Obective 1",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child1"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t1_child2",
		"t1"
	],
	[
		"T1 Child Objective 2.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child2'>this</marker> location.",
		"T1 Child Obective 2",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child2"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t1_child3",
		"t1"
	],
	[
		"T1 Child Objective 3.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child3'>this</marker> location.",
		"T1 Child Obective 3",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child3"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t1_child4",
		"t1"
	],
	[
		"T1 Child Objective 4.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child4'>this</marker> location.",
		"T1 Child Obective 4",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child4"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t1_child5",
		"t1"
	],
	[
		"T1 Child Objective 5.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child5'>this</marker> location.",
		"T1 Child Obective 5",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child5"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t1_child6",
		"t1"
	],
	[
		"T1 Child Objective 6.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child6'>this</marker> location.",
		"T1 Child Obective 6",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child6"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t1_child7",
		"t1"
	],
	[
		"T1 Child Objective 7.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child7'>this</marker> location.",
		"T1 Child Obective 7",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child7"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t1_child8",
		"t1"
	],
	[
		"T1 Child Objective 8.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child8'>this</marker> location.",
		"T1 Child Obective 8",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child8"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t1_child9",
		"t1"
	],
	[
		"T1 Child Objective 9.<br/><br/>Clear the target building in <marker name='pmc_marker_t1_child9'>this</marker> location.",
		"T1 Child Obective 9",
		"text2"
	],
	(getMarkerPos "pmc_marker_t1_child9"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
