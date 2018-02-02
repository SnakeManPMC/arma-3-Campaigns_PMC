
private ["_grp","_HeloGrp","_EPil","_nazi", "_HBHelo1"];

if (PMC_debug) then{	hint "Homebase has been found by the russians!";	player sideChat "Homebase has been found by the russians!";	diag_log "Homebase has been found by the russians!";};

_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_EPil = "CUP_O_RU_Pilot";
_nazi = "CUP_O_RUS_SpecOps";

_nazi createUnit [getPosASL east_start, _grp, "", 1, "CORPORAL"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_nazi createUnit [getPosASL east_start, _grp, "", 1, "PRIVATE"];

_HeloGrp = objNull;
_HeloGrp = createGroup east;
waitUntil {!(isNull _HeloGrp)};

_EPil createunit [getPosASL east_helostart, _HeloGrp, "", 1, "SERGEANT"];
_EPil createunit [getPosASL east_helostart, _HeloGrp, "", 1, "CORPORAL"];

_HBHelo1 = "CUP_O_Mi8_RU" createVehicle getPosASL east_helostart;
clearMagazineCargo _HBHelo1;
clearWeaponCargo _HBHelo1;

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _HeloGrp + units _grp;

(units _HeloGrp select 0) moveInDriver _HBHelo1;
(units _HeloGrp select 1) moveInGunner _HBHelo1;

{
	_x moveincargo _HBHelo1;
} forEach units _grp;

leader _HeloGrp move getPosASL HomeBase;

// lets wait until the helo has reached the HomeBase area
waitUntil
{
	sleep 1;
	(!alive _HBHelo1 || _HBHelo1 distance HomeBase < 300);
};

// if the helo died on the way to the HomeBase, lets just quit heh.
if (!alive _HBHelo1) exitWith
{
	if (PMC_debug) then
	{
		diag_log "Speznaz homebasefound helo was destroyed enroute to target. script exiting.";
	};
};

// Helo arrived, lets unload the cargo.
{
	unassignVehicle _x;
} forEach units _grp;

_grp setbehaviour "aware";
_grp setcombatmode "yellow";
_grp setspeedmode "full";
_grp setformation "line";

leader _grp move getPosASL HomeBase;

waitUntil
{
	sleep 1;
	( {_x in _HBHelo1} count units _grp == 0 );
};

if (!alive _HBHelo1) exitWith{};

// fly the helo away by adding it to the active groups array
PMC_groups = PMC_groups + [_HeloGrp];

/*
Nazis does the searching and stuff for lets say... 5 minutes?
then we blow the HomeBase up good :)
*/
sleep (300 + random 300);
if (!alive leader _grp) exitWith{};

leader _grp move getPosASL HomeBase;

waitUntil
{
	sleep 1;
	( (leader _grp distance HomeBase < 5) || ({alive _x} count units _grp == 0) );
};
if (!alive leader _grp) exitWith{};

leader _grp fire ["pipebombmuzzle", "pipebombmuzzle", "CUP_PipeBomb_M"];

// add them to the overall warplan
PMC_groups = PMC_groups + [_grp];

// after they have moved out, they detonate satchel charges
waitUntil
{
	sleep 1;
	(leader _grp distance HomeBase > 290) || ({alive _x} count units _grp == 0);
};

if ( {alive _x} count units _grp == 0) exitWith{};

leader _grp action ["touchoff", leader _grp];
leader _grp globalChat "Death to the amerikan pigs and their helper resistance dogs!";
hint "Russian Speznaz special forces have blown up your hideout along with your precious weapon pool. Take care of hiding your hideout little better next time. Sorry.";
if (PMC_debug) then
{
	diag_log format["Homebasefound blew up players weaponPool at: %1.", time];
};

// clear weaponPool and ammo boxes ruthlessly.
clearMagazinePool;
clearWeaponPool;
clearMagazineCargo RockBox;
clearMagazineCargo RockBox2;
clearWeaponCargo RockBox;
clearWeaponCargo RockBox2;

// destroy all and everyone in the hideout area ;)
{
	_x setDamage 1;
} forEach list PMC_VehList;
