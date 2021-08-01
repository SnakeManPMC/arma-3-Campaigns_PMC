// 0 = execVM "PMC\PMC_HideoutObjective.sqf";

["t1", "FAILED", true] spawn BIS_fnc_taskSetState;
sleep 5;

player globalChat "Oh shit...";
sleep 3;

// reveal woods hideout and add a new task
"hideout" setMarkerType "mil_flag";
{
	_x addrating -10000;
} forEach units civis1;

[
	player,
	[
		"t2"
	],
	[
		"Grab some weapons and escape to the <marker name='hideout'>woods hideout</marker> before you're killed in the crossfire!",
		"Get to the hideout",
		"textmarker"
	],
	(getMarkerPos "hideout"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
 
["t2", "ASSIGNED"] call BIS_fnc_taskSetState;

hint "Check briefing for update!";
