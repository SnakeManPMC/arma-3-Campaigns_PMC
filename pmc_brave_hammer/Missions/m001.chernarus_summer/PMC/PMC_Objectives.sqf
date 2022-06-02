
/*
"victory condition done" trigger
activation: blufor, present
condition: this
on activation: player sidechat "We have sufficient intel information of the target. Over."; pmc_mcomplete = true; "target1" setMarkerColorLocal "colorgreen"; PMC_airfield_recon set.Task.State "SUCCEEDED";
this trigger was located next to marker called: "gethere"
*/
[] spawn
{
	//systemChat "PMC: gethere objective waitUntil started ...";
	sleep 60;

	waitUntil
	{
		//systemChat format["PMC: gethere objective waitUntil looping, player distance to marker: %1", (getPosATL player) distance (getMarkerPos "gethere")];
		sleep 10;
		((getPosATL player) distance (getMarkerPos "gethere") < 30);
	};

	player sidechat "We have sufficient intel information of the target. Over.";
	sleep 7;
	PMCHQ sideChat "Roger that Alpha, looks like your mission is accomplished, good job. HQ out.";
	sleep 5;
	"target1" setMarkerColorLocal "colorgreen";
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	sleep 7;

	["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	[] execVM "PMC\PMC_SaveStatus.sqf";

	sleep 5;
	"pmc_end1" call BIS_fnc_endMission;
};

/*
"join rest of the team" trigger
activation: none
condition: (getPosASL player select 2) < 1
on activation: {_x setBehaviour "stealth"; _x setCombatMode "green"; _x setPos getPosASL player; [_x] join player;} forEach units my_group;
*/
[] spawn
{
	//systemChat "PMC player altitude check for group rejoin waitUntil started ...";
	// beginning of mission sleep, no rush
	sleep 60;

	waitUntil
	{
		//systemChat format["PMC player altitude check for group rejoin waitUntil altitude: %1", (getPosATL player select 2)];
		sleep 10;
		(getPosATL player select 2) < 1;
	};

	//systemChat "PMC player altitude check for group rejoin waitUntil finished, we are now on the ground.";
	{
		_x setBehaviour "STEALTH";
		_x setCombatMode "GREEN";
		_x setPos getPosATL player;
		 [_x] join player;
	} forEach units my_group;

	deleteVehicle pmc_ospreymv22;
};
