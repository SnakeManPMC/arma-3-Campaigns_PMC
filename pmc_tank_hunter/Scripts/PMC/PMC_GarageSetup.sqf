//#---load "garage"---

if (PMC_debug) then
{
	diag_log format
	[
		"PMC_GarageSetup; At garage. values: veh0: %1, veh1: %2, veh2: %3, veh3: %4, veh4: %5, veh5: %6, veh6: %7, veh7: %8, veh8: %9, veh9: %10, numVehicles: %11",
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

private _veh0pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh1pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh2pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh3pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh4pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh5pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh6pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh7pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh8pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _veh9pos = [(getPosASL player select 0)-50 + random 100, (getPosASL player select 1)-50 + random 100];
private _xVeh = objNull;

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
