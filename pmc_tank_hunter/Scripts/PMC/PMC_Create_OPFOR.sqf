
private
[
	"_EAA",
	"_EAT",
	"_EB",
	"_ECre",
	"_EG",
	"_ELAW",
	"_EMed",
	"_EMG",
	"_EOff",
	"_ESni",
	"_ESpe",
	"_grp",
	"_softVehicle",
	"_ran",
	"_rbmp2",
	"_vehTemp",
	"_rusv1",
	"_rusv2",
	"_rusv3"
];

_EB = "CUP_O_RU_Soldier";
_EAT = "CUP_O_RU_Soldier_AT";
_ELAW = "CUP_O_RU_Soldier_AT";
_EAA = "CUP_O_RU_Soldier_AA";
_EOff = "CUP_O_RU_Soldier_SL";
_EG = "CUP_O_RU_Soldier_GL";
_EMG = "CUP_O_RU_Soldier_MG";
_EMed = "CUP_O_RU_Medic";
_ECre = "CUP_O_RU_Crew";
_ESni = "CUP_O_RU_Sniper";
_ESpe = "CUP_O_RUS_SpecOps";


/*

	create Russian JAM Anti Armor soldier squad

*/
_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_softVehicle = floor (random (count PMC_EastSoftV));
_vehTemp = PMC_EastSoftV select _softVehicle;

_rusv1 = _vehTemp createVehicle getPosASL east_start;
_rusv1 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _rusv1;
clearWeaponCargo _rusv1;

_ran = random(1);
_EB createunit [getPosASL east_start, _grp, "", _ran, "SERGEANT"];
_ran = random(1);
_ELAW createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_ELAW createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_EAA createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

leader _grp moveInDriver _rusv1;
// rest are put in cargo
{
	if (_x != leader _grp) then
	{
		_x moveInCargo _rusv1;
	};
} forEach units _grp;

eastguys = eastguys + 4;
PMC_groups = PMC_groups + [_grp];

// heh fill them up baby
/*
if (typeOf _rusv1 == "CUP_C_Ural_Civ_02") then
{
	_q = 0;
	_n = 12;
	while {_q<_n} do
	{
		"CUP_O_RU_Soldier" CreateUnit [getPosASL east_start, _EASTtempgrparmor, "e3", 0.3, "Private"];
		_q = _q + 1;
		e3 moveInCargo _rusv1;
	};
};
*/

leader _grp sidechat "ANTI ARMOR SQUAD 1 HERE. READY TO ENGAGE. OVER.";


/*

	create Russian JAM Anti Air soldier squad

*/
_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_softVehicle = floor (random (count PMC_EastSoftV));
_vehTemp = PMC_EastSoftV select _softVehicle;

_rusv2 = _vehTemp createVehicle getPosASL east_start;
_rusv2 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _rusv2;
clearWeaponCargo _rusv2;

_ran = random(1);
_EB createunit [getPosASL east_start, _grp, "", _ran, "SERGEANT"];
_ran = random(1);
_EAA createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_EAA createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_ELAW createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

leader _grp moveInDriver _rusv2;
// rest are put in cargo
{
	if (_x != leader _grp) then
	{
		_x moveInCargo _rusv2;
	};
} forEach units _grp;

eastguys = eastguys + 4;
PMC_groups = PMC_groups + [_grp];

// heh fill them up baby
/*
if (typeOf _rusv1 == "CUP_C_Ural_Civ_02") then
{
	_q = 0;
	_n = 12;
	while {_q<_n} do
	{
		"CUP_O_RU_Soldier" CreateUnit [getPosASL east_start, _EASTtempgrpair, "e3", 0.3, "Private"];
		_q = _q + 1;
		e3 moveInCargo _rusv1;
	};
};
*/
leader _grp sidechat "ANTI AIR SQUAD 1 HERE. READY TO ENGAGE. OVER.";


/*

	create Russian JAM soldier squad

*/
_vehTemp = "CUP_C_Ural_Civ_02";

_rusv3 = _vehTemp createVehicle getPosASL east_start;
_rusv3 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _rusv3;
clearWeaponCargo _rusv3;

_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_ran = random(1);
_EOff createunit [getPosASL east_start, _grp, "", _ran, "SERGEANT"];
_ran = random(1);
_EB createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_EG createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_ELAW createunit [getPosASL east_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_EAT createunit [getPosASL east_start, _grp, "", _ran, "PRIVATE"];
_EMG createunit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_EMG createunit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_ran = random(1);
_EMed createunit [getPosASL east_start, _grp, "", _ran, "PRIVATE"];
_ran = random(1);
_EB createunit [getPosASL east_start, _grp, "", _ran, "PRIVATE"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

leader _grp moveInDriver _rusv3;
// rest are put in cargo
{
	if (_x != leader _grp) then
	{
		_x moveInCargo _rusv3;
	};
} forEach units _grp;

eastguys = eastguys + 9;
PMC_groups = PMC_groups + [_grp];


/*

	Russian tank

*/
_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_softVehicle = floor (random (count PMC_EastTanks));
_vehTemp = PMC_EastTanks select _softVehicle;

_rbmp2 = _vehTemp createVehicle getPosASL east_start;
_rbmp2 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _rbmp2;
clearWeaponCargo _rbmp2;

_ECre createunit [getPosASL east_start, _grp, "", 1, "SERGEANT"];
_ECre createunit [getPosASL east_start, _grp, "", 1, "CORPORAL"];
_ECre createunit [getPosASL east_start, _grp, "", 1, "PRIVATE"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

// add the trophy handgun for the tank crew
[_grp] execVM "PMC\PMC_makarovs_for_crews.sqf";

(units _grp select 0) moveInCommander _rbmp2;
(units _grp select 1) moveInGunner _rbmp2;
(units _grp select 2) moveInDriver _rbmp2;

PMC_groups = PMC_groups + [_grp];
eastguys = eastguys + 3;


/*

	special forces

*/
_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_ESpe createunit [getPosASL east_start, _grp, "", 1, "SERGEANT"];
_ESpe createunit [getPosASL east_start, _grp, "", 1, "CORPORAL"];
_ESpe createunit [getPosASL east_start, _grp, "", 1, "CORPORAL"];
_ESpe createunit [getPosASL east_start, _grp, "", 1, "CORPORAL"];
_ESpe createunit [getPosASL east_start, _grp, "", 1, "PRIVATE"];
_ESpe createunit [getPosASL east_start, _grp, "", 1, "PRIVATE"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

PMC_groups = PMC_groups + [_grp];
eastguys = eastguys + 6;


/*

	sniper team

*/
_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_ESni createunit [getPosASL east_start, _grp, "", 1, "SERGEANT"];
_EG createunit [getPosASL east_start, _grp, "", 1, "CORPORAL"];

PMC_groups = PMC_groups + [_grp];
eastguys = eastguys + 2;

if (PMC_debug) then
{
	player sidechat format
	[
		"Created 4+3+12 east guys! and tank: %2 total of: %1",
		count aieast,
		_vehTemp
	];
};
