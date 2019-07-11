
private
[
	"_veh0pos",
	"_veh1pos",
	"_veh2pos",
	"_veh3pos",
	"_veh4pos",
	"_veh5pos",
	"_veh6pos",
	"_veh7pos",
	"_veh8pos",
	"_veh9pos",
	"_xVeh"
];

if (PMC_debug) then
{
	diag_log "PMC\PMC_StartMission.sqf executed.";
};

// debug is ON, cutscenes off
PMC_debug = true;
pmcmoff = false;

if (PMC_debug) then
{
	hint "debug is on...";
	10 setradiomsg "Debug off";
}
else
{
	10 setradiomsg "Debug on";
};

PMC_sdg = 0;
// loop waiting time for PMC\PMC_moving.sqf
PMC_MLP = 5;
// not used?
//PMC_WLoopDelay = 10;
PMC_BodyCount = 0;
PMC_WinKills = 900;

// these two are setup in PMC_war.sqf also, why?
eastguys = 0;
westguys = 0;

PMC_groups = [];
// mission editor groups
PMC_groups = PMC_groups + [ rusinf1, usinf1 ];

PMC_targets = [ pole1, pole2, pole3, pole4, pole5, pole6, pole7, pole8, pole9, pole10 ];
West_ControList = [0,0,0,0,0,0,0,0,0,0];
West_AssignList = [0,0,0,0,0,0,0,0,0,0];
East_ControList = [0,0,0,0,0,0,0,0,0,0];
East_AssignList = [0,0,0,0,0,0,0,0,0,0];

{
	_x setmarkersize [100, 100];
} forEach [ "pmc1", "pmc2", "pmc3", "pmc4", "pmc5", "pmc6", "pmc7", "pmc8", "pmc9", "pmc10" ];

if (isNil 'PMC_AllTimeUsed') then
{
	PMC_AllTimeUsed = 0;
};

// adjust the time of day
skipTime PMC_AllTimeUsed;
//skiptime (((paramsarray select 0) - daytime + 24) % 24);
//cutText [startText, "BLACK IN",3];

[] execVM "PMC\PMC_Vehicle_Arrays.sqf";
[] execVM "PMC\PMC_HomeBaseSetup.sqf";
[] execVM "PMC\PMC_RollCall.sqf";

//#---load "garage"---

if (PMC_debug) then
{
	diag_log format
	[
		"At garage. values: veh0: %1, veh1: %2, veh2: %3, veh3: %4, veh4: %5, veh5: %6, veh6: %7, veh7: %8, veh8: %9, veh9: %10, numVehicles: %11",
		veh0,
		veh1,
		veh2,
		veh3,
		veh4,
		veh5,
		veh6,
		veh7,
		veh8,
		veh9,
		numVehicles
	];
};

_veh0pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh1pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh2pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh3pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh4pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh5pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh6pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh7pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh8pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
_veh9pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];

if (numVehicles >= 1) then
{
	_xVeh = veh0 createVehicle _veh0pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 2) then
{
	_xVeh = veh1 createVehicle _veh1pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 3) then
{
	_xVeh = veh2 createVehicle _veh2pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 4) then
{
	_xVeh = veh3 createVehicle _veh3pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 5) then
{
	_xVeh = veh4 createVehicle _veh4pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 6) then
{
	_xVeh = veh5 createVehicle _veh5pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 7) then
{
	_xVeh = veh6 createVehicle _veh6pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 8) then
{
	_xVeh = veh7 createVehicle _veh7pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 9) then
{
	_xVeh = veh8 createVehicle _veh8pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

if (numVehicles >= 10) then
{
	_xVeh = veh9 createVehicle _veh9pos;
	clearWeaponCargo _xVeh;
	clearMagazineCargo _xVeh;
};

//---- end of weaponpool stuff

// new city occupation colors
"pmc1" setMarkerColor PMC_City01;
["pmc1"] execVM "PMC\PMC_add_defenses.sqf";
"pmc2" setMarkerColor PMC_City02;
["pmc2"] execVM "PMC\PMC_add_defenses.sqf";
"pmc3" setMarkerColor PMC_City03;
["pmc3"] execVM "PMC\PMC_add_defenses.sqf";
"pmc4" setMarkerColor PMC_City04;
["pmc4"] execVM "PMC\PMC_add_defenses.sqf";
"pmc5" setMarkerColor PMC_City05;
["pmc5"] execVM "PMC\PMC_add_defenses.sqf";
"pmc6" setMarkerColor PMC_City06;
["pmc6"] execVM "PMC\PMC_add_defenses.sqf";
"pmc7" setMarkerColor PMC_City07;
["pmc7"] execVM "PMC\PMC_add_defenses.sqf";
"pmc8" setMarkerColor PMC_City08;
["pmc8"] execVM "PMC\PMC_add_defenses.sqf";
"pmc9" setMarkerColor PMC_City09;
["pmc9"] execVM "PMC\PMC_add_defenses.sqf";
"pmc10" setMarkerColor PMC_City10;
["pmc10"] execVM "PMC\PMC_add_defenses.sqf";

sleep 5;
if (PMC_debug) then
{
	diag_log "PMC_StartMission starting to execute final scripts like PMC_war etc...";
};
// war scripts + weather
[] execVM "PMC\PMC_add-civcars.sqf";
[] execVM "PMC\PMC_war.sqf";
[] execVM "PMC\PMC_moving.sqf";
[] execVM "PMC\PMC_weather.sqf";

if (PMC_debug) then
{
	diag_log "PMC\PMC_StartMission.sqf completed succesfully.";
};
