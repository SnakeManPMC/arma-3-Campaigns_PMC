
private ["_A","_t","_p","_r1","_puh","_city"];

_A = 0;
_t = [];

while { _A < 10 } do
{
	_A = _A + 1;
	_p = format["pmc%1", _A];
	if (getMarkerColor _p == "ColorRed") then
	{
		_t = _t + [ _p ];
	};
};

// randomly select one of the red cities.
if ( (count _t) == 0 ) then
{
	_city = getMarkerPos "pmc1";
}
else
{
	_r1 = floor (random count _t);
	_puh = _t select _r1;
	
	_city = getMarkerPos _puh;
};

recruits1 = objNull;
waitUntil
{
	recruits1 = createGroup (civilian);
	!(isNull recruits1);
};

"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "SERGEANT"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "CORPORAL"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "CORPORAL"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "CORPORAL"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "PRIVATE"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "PRIVATE"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "PRIVATE"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "PRIVATE"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "PRIVATE"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "PRIVATE"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "PRIVATE"];
"CUP_C_C_Citizen_01" createUnit [_city, recruits1, "", 0, "PRIVATE"];

{
	_x addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
} forEach units recruits1;

recruits1 setbehaviour "careless";
recruits1 setcombatmode "green";
recruits1 setspeedmode "limited";
recruits1 setformation "stag column";

recruits1 addWaypoint [_city, 20];
[recruits1, 1] setWaypointBehaviour "SAFE";
[recruits1, 1] setWaypointCombatMode "RED";
[recruits1, 1] setWaypointSpeed "LIMITED";
[recruits1, 1] setWaypointFormation "WEDGE";
[recruits1, 1] setWaypointType "SENTRY";
[recruits1, 1] setWaypointCompletionRadius 50;

"target1" setMarkerPos _city;
"target1" setMarkerType "mil_Destroy";
"target1" setMarkerColor "ColorRed";
PMC_CivilianTrig setPos _city;
