
private
[
	"_grp",
	"_hvw1",
	"_hvw2",
	"_hvw3",
	"_softVehicle",
	"_m2a2",
	"_r1",
	"_ran",
	"_vehTemp",
	"_WAA",
	"_WAT",
	"_WB",
	"_WCre",
	"_WG",
	"_WLAW",
	"_WMed",
	"_WMG",
	"_WOff",
	"_WSni",
	"_WSpe"
];

_WB = "CUP_B_USMC_Soldier";
_WAT = "CUP_B_USMC_Soldier_AT";
_WLAW = "CUP_B_USMC_Soldier_AT";
_WAA = "CUP_B_USMC_Soldier_AA";
_WOff = "CUP_B_USMC_Soldier_SL";
_WG = "CUP_B_USMC_Soldier_GL";
_WMG = "CUP_B_USMC_Soldier_MG";
_WMed = "CUP_B_USMC_Medic";
_WCre = "CUP_B_USMC_Crew";
_WSni = "CUP_B_USMC_Sniper_M40A3";
_WSpe = "CUP_B_FR_Soldier_TL";

/*

	create US JAM Anti Armor soldier squad

*/

// this so there is no m113 with mg or refuel truck with 2 cargo slots
_softVehicle = [ "CUP_B_HMMWV_Unarmed_USMC", "CUP_B_MTVR_USMC" ];

_r1 = floor (random (count _softVehicle));
_vehTemp = _softVehicle select _r1;

_hvw1 = _vehTemp createVehicle getPosASL west_start;
_hvw1 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _hvw1;
clearWeaponCargo _hvw1;

_grp = objNull;
_grp = createGroup west;
waitUntil {!(isNull _grp)};

_ran = random(1);
_WB createunit [getPosASL west_start, _grp, "", _ran, "SERGEANT"];
_ran = random(1);
_WAT createunit [getPosASL west_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_WLAW createunit [getPosASL west_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_WAA createunit [getPosASL west_start, _grp, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

(units _grp select 0) moveInDriver _hvw1;
(units _grp select 1) moveInCargo _hvw1;
(units _grp select 2) moveInCargo _hvw1;
(units _grp select 3) moveInCargo _hvw1;

PMC_groups = PMC_groups + [_grp];

westguys = westguys + 4;

leader _grp sidechat "ANTI ARMOR TEAM REPORTING. READY TO ENGAGE. OVER.";


/*

	create US JAM AA soldier squad
	
*/

_r1 = floor (random (count _softVehicle));
_vehTemp = objNull;
_vehTemp = _softVehicle select _r1;

_hvw2 = _vehTemp createVehicle getPosASL west_start;
_hvw2 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _hvw2;
clearWeaponCargo _hvw2;

_grp = objNull;
_grp = createGroup west;
waitUntil {!(isNull _grp)};

_ran = random(1);
_WB createunit [getPosASL west_start, _grp, "", _ran, "SERGEANT"];
_ran = random(1);
_WAA createunit [getPosASL west_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_WAA createunit [getPosASL west_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_WLAW createunit [getPosASL west_start, _grp, "", _ran, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

(units _grp select 0) moveInDriver _hvw2;
(units _grp select 1) moveInCargo _hvw2;
(units _grp select 2) moveInCargo _hvw2;
(units _grp select 3) moveInCargo _hvw2;

PMC_groups = PMC_groups + [_grp];

westguys = westguys + 4;

leader _grp sidechat "ANTI AIR SQUAD 2 HERE. READY TO ENGAGE. OVER.";


/*

	create US JAM soldier squad

*/
_vehTemp = "CUP_B_MTVR_USMC";

_hvw3 = _vehTemp createVehicle getPosASL west_start;
_hvw3 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _hvw3;
clearWeaponCargo _hvw3;

_grp = objNull;
_grp = createGroup west;
waitUntil {!(isNull _grp)};

_ran = random(1);
_WOff createunit [getPosASL west_start, _grp, "", _ran, "SERGEANT"];
_ran = random(1);
_WB createunit [getPosASL west_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_WG createunit [getPosASL west_start, _grp, "", _ran, "CORPORAL"];
_ran = random(1);
_WAT createunit [getPosASL west_start, _grp, "", _ran, "PRIVATE"];
_ran = random(1);
_WLAW createunit [getPosASL west_start, _grp, "", _ran, "PRIVATE"];
_WMG createunit [getPosASL west_start, _grp, "", 1, "PRIVATE"];
_WMG createunit [getPosASL west_start, _grp, "", 1, "PRIVATE"];
_ran = random(1);
_WMed createunit [getPosASL west_start, _grp, "", _ran, "PRIVATE"];
_ran = random(1);
_WB createunit [getPosASL west_start, _grp, "", _ran, "PRIVATE"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

leader _grp moveInDriver _hvw3;
// rest are put in cargo
{
	if (_x != leader _grp) then
	{
		_x moveInCargo _hvw3;
	};
} forEach units _grp;

westguys = westguys + 9;
PMC_groups = PMC_groups + [_grp];

leader _grp sidechat "INFANTRY GRUNTS AT YOUR SERVICE. READY TO ENGAGE. OVER.";


/*

	US Tank

*/
_grp = objNull;
_grp = createGroup west;
waitUntil {!(isNull _grp)};

_r1 = floor (random (count PMC_WestTanks));
_vehTemp = PMC_WestTanks select _r1;

_m2a2 = _vehTemp createVehicle getPosASL west_start;
_m2a2 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _m2a2;
clearWeaponCargo _m2a2;

_WCre createunit [getPosASL west_start, _grp, "", 1, "SERGEANT"];
_WCre createunit [getPosASL west_start, _grp, "", 1, "CORPORAL"];
_WCre createunit [getPosASL west_start, _grp, "", 1, "PRIVATE"];

(units _grp select 0) moveInCommander _m2a2;
(units _grp select 1) moveInGunner _m2a2;
(units _grp select 2) moveInDriver _m2a2;

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

PMC_groups = PMC_groups + [_grp];
westguys = westguys + 1;


/*

	special forces

*/
_grp = objNull;
_grp = createGroup west;
waitUntil {!(isNull _grp)};

_WSpe createunit [getPosASL west_start, _grp, "", 1, "SERGEANT"];
_WSpe createunit [getPosASL west_start, _grp, "", 1, "CORPORAL"];
_WSpe createunit [getPosASL west_start, _grp, "", 1, "CORPORAL"];
_WSpe createunit [getPosASL west_start, _grp, "", 1, "CORPORAL"];
_WSpe createunit [getPosASL west_start, _grp, "", 1, "PRIVATE"];
_WSpe createunit [getPosASL west_start, _grp, "", 1, "PRIVATE"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

PMC_groups = PMC_groups + [_grp];
westguys = westguys + 6;


/*

	sniper team

*/
_grp = objNull;
_grp = createGroup west;
waitUntil {!(isNull _grp)};

_WSni createunit [getPosASL west_start, _grp, "", 1, "SERGEANT"];
_WG createunit [getPosASL west_start, _grp, "", 1, "CORPORAL"];

PMC_groups = PMC_groups + [_grp];
westguys = westguys + 2;

if (PMC_debug) then
{
	player sidechat format
	[
		"Created 4+3+12+6+2 west guys! and tank: %2 total of: %1",
		count aiwest,
		_vehTemp
	];
};
