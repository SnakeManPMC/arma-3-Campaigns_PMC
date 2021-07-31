
// gordon is back at the base, launched by trigger: leader assault1 knowsAbout leader assault2 > 0.5
{[_x] join assault1} foreach units assault2;
sleep 2;
player sideChat "Okay we are back at the base, lets get some rifles from ammo boxes and shoot some commies.";
sleep 2;
["t1", "SUCCEEDED"] call BIS_fnc_taskSetState;

// new objective to defend the base
[
	player,
	[
		"t2"
	],
	[
		"Defend <marker name='usbase'>base</marker>",
		"Defend base",
		"usbase"
	],
	(getMarkerPos "usbase"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t2", "ASSIGNED"] call BIS_fnc_taskSetState;
