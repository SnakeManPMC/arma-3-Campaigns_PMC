
// check if helo systems are running already

private ["_heloGrp","_grp1","_grp2","_poo","_r1","_rtmptnk","_helo","_ran","_helo_dest","_fish"];

// helicopter
_heloGrp = objNull;
_heloGrp = createGroup (east);
waitUntil
{
	!(isNull _heloGrp);
};

"CUP_O_RU_Pilot" createUnit [getPosATL east_helostart, _heloGrp, "", 1, "SERGEANT"];
"CUP_O_RU_Pilot" createUnit [getPosATL east_helostart, _heloGrp, "", 1, "CORPORAL"];

_poo = ["CUP_O_Mi8_RU", "CUP_O_Mi24_V_RU", "CUP_O_Mi24_P_RU", "CUP_B_Mi24_D_CDF"];
_r1 = floor (random count _poo);
_rtmptnk = _poo select _r1;

if (PMC_debug) then
{
	player sideChat format["PMC_Create_OPFOR_Helo_Reinf; is now running! - %1", _rtmptnk];
	diag_log format["PMC_Create_OPFOR_Helo_Reinf; is now running! - %1", _rtmptnk];
};

_helo = _rtmptnk createVehicle getPosATL east_helostart;
_helo addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _helo;
clearWeaponCargo _helo;

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _heloGrp;

// add the trophy handgun for the tank crew
[_heloGrp] execVM "PMC\PMC_makarovs_for_crews.sqf";

// this was _grp before... be careful!
(units _heloGrp select 0) moveInDriver _helo;
(units _heloGrp select 0) moveInGunner _helo;

eastguys = eastguys + 1;

leader _heloGrp sidechat format["%1 Ready for takeoff. Over.", _rtmptnk];


/*

	create OPFOR Anti Armor soldier squad

*/
_grp1 = objNull;
waitUntil
{
	_grp1 = createGroup (east);
	!(isNull _grp1);
};
_ran = random(1);
"CUP_O_RU_Soldier" createUnit [getPosATL east_helostart, _grp1, "", _ran, "SERGEANT"];
_ran = random(1);
"CUP_O_RU_Soldier_AT" createUnit [getPosATL east_helostart, _grp1, "", _ran, "CORPORAL"];
_ran = random(1);
"CUP_O_RU_Soldier_AT" createUnit [getPosATL east_helostart, _grp1, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp1;

leader _grp1 sidechat "Anti armor helicopter team reporting. Ready to engage. Over.";

{
	_x moveInCargo _helo;
} foreach units _grp1;


/*

	create US JAM AA soldier squad

*/
_grp2 = objNull;
waitUntil
{
	_grp2 = createGroup (east);
	!(isNull _grp2);
};
_ran = random(1);
"CUP_O_RU_Soldier" createUnit [getPosATL east_helostart, _grp2, "", _ran, "SERGEANT"];
_ran = random(1);
"CUP_O_RU_Soldier_AA" createUnit [getPosATL east_helostart, _grp2, "", _ran, "CORPORAL"];
_ran = random(1);
"CUP_O_RU_Soldier_AA" createUnit [getPosATL east_helostart, _grp2, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp2;

leader _grp2 sidechat "Anti air helicopter squad here. Ready to engage. Over.";
//sleep 1;

{
	_x moveInCargo _helo;
} foreach units _grp2;


// no more capacity in russian choppers


//--- NEW! ---
_helo_dest = PMC_targets select floor (random (count PMC_targets));
_fish = getPosATL _helo_dest;

if (PMC_debug) then
{
	player sideChat format["PMC_Create_OPFOR_Helo_Reinf; target - %1", _helo_dest];
	diag_log format["PMC_Create_OPFOR_Helo_Reinf; target - %1", _helo_dest];
};

leader _heloGrp move _fish;
waitUntil
{
	sleep 1;
	(unitready leader _heloGrp || !alive _helo);
};

if (!alive _helo) exitWith
{
	if (PMC_debug) then
	{
		player sideChat format["PMC_Create_OPFOR_Helo_Reinf; helo entered slowdelete - %1", _helo];
		diag_log format["PMC_Create_OPFOR_Helo_Reinf; helo entered slowdelete - %1", _helo];
	};
};

{
	unassignVehicle _x;
} forEach units _grp1 + units _grp2;

waitUntil
{
	sleep 1;
	(getPosATL _helo select 2 < 2);
};

// this causes stutter?
{
	_x action ["eject", _helo];
} forEach units _grp1 + units _grp2;

// this causes stutter? OR PMC_moving.sqf which handles PMC_groups then?
PMC_groups = PMC_groups + [_grp1, _grp2];
eastguys = eastguys + 12;

leader _heloGrp move (getPosATL east_helostart);

if (PMC_debug) then
{
	player sideChat format["PMC_Create_OPFOR_Helo_Reinf; helo heading home - %1", _helo];
	diag_log format["PMC_Create_OPFOR_Helo_Reinf; helo heading home - %1", _helo];
};
// let it fly a bit so we dont instantly check for unitReady
sleep 5;

waitUntil
{
	sleep 1;
	(unitready leader _heloGrp || !alive _helo);
};

if (!alive _helo) exitWith
{
	if (PMC_debug) then
	{
		player sideChat format["PMC_Create_OPFOR_Helo_Reinf; helo entered slowdelete - %1", _helo];
		diag_log format["PMC_Create_OPFOR_Helo_Reinf; helo entered slowdelete - %1", _helo];
	};
};

{
	deletevehicle _x;
} forEach units _heloGrp;
deleteVehicle _helo;

if (PMC_debug) then
{
	player sideChat "PMC_Create_OPFOR_Helo_Reinf; exit";
	diag_log "PMC_Create_OPFOR_Helo_Reinf; exit";
};
