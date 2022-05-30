
/*
"victory condition done" trigger
activation: blufor, present
condition: this
on activation: player sidechat "We have sufficient intel information of the target. Over."; pmc_mcomplete = true; "target1" setMarkerColorLocal "colorgreen"; PMC_airfield_recon set.Task.State "SUCCEEDED";
this trigger was located next to marker called: "gethere"
*/
[] spawn
{
	sleep 60;

	waitUntil
	{
		sleep 10;
		((getPosATL player) distance (getMarkerPos "gethere") < 30);
	};

	player sidechat "We have sufficient intel information of the target. Over.";
	sleep 7;

	pmc_mcomplete = true;
	"target1" setMarkerColorLocal "colorgreen";
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

/*
"join rest of the team" trigger
activation: none
condition: (getPosASL player select 2) < 1
on activation: {_x setBehaviour "stealth"; _x setCombatMode "green"; _x setPos getPosASL player; [_x] join player;} forEach units my_group;
*/
[] spawn
{
	// beginning of mission sleep, no rush
	sleep 60;

	waitUntil
	{
		sleep 10;
		(getPosASL player select 2) < 1;
	};

	{
		_x setBehaviour "stealth";
		_x setCombatMode "green";
		_x setPos getPosASL player;
		 [_x] join player;
	} forEach units my_group;
};

// mission ending trigger was traditional END1 with condition: pmc_mcomplete
[] spawn
{
	// beginning of mission sleep, no rush
	sleep 60*5;

	waitUntil
	{
		sleep 10;
		pmc_mcomplete;
	};

	sleep 7;
	"pmc_end1" call BIS_fnc_endMission;
};
