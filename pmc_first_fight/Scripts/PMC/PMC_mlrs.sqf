/*

Artillery script (MLRS) while we wait CoC Unified Artillery :)

This script simulates CoC UA to best of "scripted" ability.

*/

private [
	"_MyCount","_pos","_ammotype","_tubes","_shellstube","_rounds",
	"_precision","_a"
];

// debug
if (pmcdb) then
{
	player sideChat format["arty: %1, mortars: %2, mlrs: %3",(PMC_artyAmmo select 0),(PMC_artyAmmo select 1),(PMC_artyAmmo select 2)];
};

_MyCount = PMC_artyAmmo select 2;

if (_MyCount < 1) exitWith
{
	player globalChat "MRLS rockets are out. Over.";
};
if (PMC_MLRS_Busy) exitWith
{
	player globalChat "MLRS team is busy. Over.";
};

PMC_MLRS_Busy = true;
publicVariable "PMC_MLRS_Busy";

_pos = _this select 0;
// arty
//_ammotype = "Sh_155mm_AMOS";
// mortars
//_ammotype = "G_40mm_HE";
// mlrs
_ammotype = "G_30mm_HE";

//player globalChat format["pos: %1",_pos];
//player globalChat format["Requesting MLRS rocket strike on %1",_pos];
sleep (10 + random 10);
player globalChat "Mike Tango Oscar.";
sleep (20 + random 10);
player globalChat "Shot.";
sleep (10 + random 15);
player globalChat "Splash.";
sleep (3 + random 5);

_tubes = 20;
_shellstube = 10;
_rounds = _shellstube * _tubes;
_precision = 100;

_a=0;
while {_a < _rounds} do
{
	sleep random .1;
	_ammotype createVehicleLocal [(_pos select 0)-(_precision/2)+random _precision,(_pos select 1)-(_precision/2)+random _precision,0];
	_ammotype createVehicleLocal [(_pos select 0)-(_precision/2)+random _precision,(_pos select 1)-(_precision/2)+random _precision,0];
	_a = _a + 2;
//	player globalChat format["_a: %1",_a];
};

player globalChat "Mission Complete.";

PMC_artyAmmo set [2,(_MyCount - _rounds)];

// debug
if (pmcdb) then
{
	player sideChat format["after firing: arty: %1, mortars: %2, mlrs: %3",(PMC_artyAmmo select 0),(PMC_artyAmmo select 1),(PMC_artyAmmo select 2)];
};

PMC_MLRS_Busy = false;
publicVariable "PMC_MLRS_Busy";
