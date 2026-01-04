
// check if helo systems are running already

private ["_heloGrp","_grp1","_grp2","_grp3","_grp4","_poo","_r1","_rtmptnk","_helo","_ran","_helo_dest","_fish"];

// helicopter
_heloGrp = objNull;
_heloGrp = createGroup (west);
waitUntil
{
	!(isNull _heloGrp);
};

"CUP_B_USMC_Pilot" createUnit [getPosATL west_helostart, _heloGrp, "", 1, "SERGEANT"];
"CUP_B_USMC_Pilot" createUnit [getPosATL west_helostart, _heloGrp, "", 1, "CORPORAL"];

_poo = ["CUP_B_MH60S_USMC", "CUP_B_UH60M_US", "CUP_B_CH47F_USA"];
_r1 = floor (random count _poo);
_rtmptnk = _poo select _r1;

if (PMC_debug) then
{
	player sideChat format["PMC_Create_BLUFOR_Helo_Reinf; is now running! - %1", _rtmptnk];
	diag_log format["PMC_Create_BLUFOR_Helo_Reinf; is now running! - %1", _rtmptnk];
};

_helo = _rtmptnk createVehicle getPosATL west_helostart;
_helo addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _helo;
clearWeaponCargo _helo;

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _heloGrp;

// this was _grp before, please be careful it was not supposed to be, hmm...
(units _heloGrp select 0) moveInDriver _helo;
(units _heloGrp select 0) moveInGunner _helo;

westguys = westguys + 1;

leader _heloGrp sidechat format["%1 Ready for takeoff. Over.", _rtmptnk];


/*

	create US JAM Anti Armor soldier squad

*/
_grp1 = objNull;
waitUntil
{
	_grp1 = createGroup (west);
	!(isNull _grp1);
};
_ran = random(1);
"CUP_B_USMC_Soldier" createUnit [getPosATL west_helostart, _grp1, "", _ran, "SERGEANT"];
_ran = random(1);
"CUP_B_USMC_Soldier_AT" createUnit [getPosATL west_helostart, _grp1, "", _ran, "CORPORAL"];
_ran = random(1);
"CUP_B_USMC_Soldier_AT" createUnit [getPosATL west_helostart, _grp1, "", _ran, "CORPORAL"];

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
	_grp2 = createGroup (west);
	!(isNull _grp2);
};
_ran = random(1);
"CUP_B_USMC_Soldier" createUnit [getPosATL west_helostart, _grp2, "", _ran, "SERGEANT"];
_ran = random(1);
"CUP_B_USMC_Soldier_AA" createUnit [getPosATL west_helostart, _grp2, "", _ran, "CORPORAL"];
_ran = random(1);
"CUP_B_USMC_Soldier_AA" createUnit [getPosATL west_helostart, _grp2, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp2;

leader _grp2 sidechat "Anti air helicopter squad here. Ready to engage. Over.";
//sleep 1;

{
	_x moveInCargo _helo;
} foreach units _grp2;



/*
--- NEW ---

;
; create US JAM Anti Armor soldier squad
;
*/
_grp3 = objNull;
waitUntil
{
	_grp3 = createGroup (west);
	!(isNull _grp3);
};
_ran = random(1);
"CUP_B_USMC_Soldier" createUnit [getPosATL west_helostart, _grp3, "", _ran, "SERGEANT"];
_ran = random(1);
"CUP_B_USMC_Soldier_AT" createUnit [getPosATL west_helostart, _grp3, "", _ran, "CORPORAL"];
_ran = random(1);
"CUP_B_USMC_Soldier_AT" createUnit [getPosATL west_helostart, _grp3, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp3;

leader _grp3 sidechat "Anti armor helicopter team 2 reporting. Ready to engage. Over.";

{
	_x moveInCargo _helo;
} foreach units _grp3;


/*

	create US JAM AA soldier squad

*/
_grp4 = objNull;
waitUntil
{
	_grp4 = createGroup (west);
	!(isNull _grp4);
};
_ran = random(1);
"CUP_B_USMC_Soldier" createUnit [getPosATL west_helostart, _grp4, "", _ran, "SERGEANT"];
_ran = random(1);
"CUP_B_USMC_Soldier_AA" createUnit [getPosATL west_helostart, _grp4, "", _ran, "CORPORAL"];
_ran = random(1);
"CUP_B_USMC_Soldier_AA" createUnit [getPosATL west_helostart, _grp4, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp4;

leader _grp4 sidechat "Anti air blackhawk squad 2 here. Ready to engage. Over.";

{
	_x moveInCargo _helo;
} foreach units _grp4;



//--- NEW! ---
_helo_dest = PMC_targets select floor (random (count PMC_targets));
_fish = getPosATL _helo_dest;

if (PMC_debug) then
{
	player sideChat format["PMC_Create_BLUFOR_Helo_Reinf; target - %1", _helo_dest];
	diag_log format["PMC_Create_BLUFOR_Helo_Reinf;  target - %1", _helo_dest];
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
		player sideChat format["PMC_Create_BLUFOR_Helo_Reinf; helo entered slowdelete - %1", _helo];
		diag_log format["PMC_Create_BLUFOR_Helo_Reinf;  helo entered slowdelete - %1", _helo];
	};
};

{
	unassignVehicle _x;
} forEach units _grp1 + units _grp2 + units _grp3 + units _grp4;

waitUntil
{
	sleep 1;
	(getPosATL _helo select 2 < 2);
};

// this causes stutter?
{
	_x action ["eject", _helo];
} forEach units _grp1 + units _grp2 + units _grp3 + units _grp4;

// this causes stutter? OR PMC_moving.sqf which handles PMC_groups then?
PMC_groups = PMC_groups + [_grp1, _grp2, _grp3, _grp4];
westguys = westguys + 12;

leader _heloGrp move (getPosATL west_helostart);

if (PMC_debug) then
{
	player sideChat format["PMC_Create_BLUFOR_Helo_Reinf; helo heading home - %1", _helo];
	diag_log format["PMC_Create_BLUFOR_Helo_Reinf;  helo heading home - %1", _helo];
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
		player sideChat format["PMC_Create_BLUFOR_Helo_Reinf; helo entered slowdelete - %1", _helo];
		diag_log format["PMC_Create_BLUFOR_Helo_Reinf;  helo entered slowdelete - %1", _helo];
	};
};

{
	deletevehicle _x;
} forEach units _heloGrp;
deleteVehicle _helo;

if (PMC_debug) then
{
	player sideChat "PMC_Create_BLUFOR_Helo_Reinf;  exit";
	diag_log "PMC_Create_BLUFOR_Helo_Reinf;  exit";
};
