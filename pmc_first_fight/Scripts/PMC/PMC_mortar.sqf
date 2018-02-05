/*

Artillery script (mortar) while we wait CoC Unified Artillery :)

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

_MyCount = PMC_artyAmmo select 1;

if (_MyCount < 1) exitWith
{
	player globalChat "Mortar rounds are out. Over.";
};
if (PMC_Mortar_Busy) exitWith
{
	player globalChat "Mortar team is busy. Over.";
};

PMC_Mortar_Busy = true;
publicVariable "PMC_Mortar_Busy";

_pos = _this select 0;
// arty
//_ammotype = "Sh_155mm_AMOS";
// mortars
_ammotype = "G_40mm_HE";
// mlrs
//_ammotype = "G_30mm_HE";

//player globalChat format["pos: %1",_pos];
//player globalChat format["Requesting mortar strike on %1",_pos];
sleep (10 + random 10);
player globalChat "Mike Tango Oscar.";
sleep (20 + random 10);
player globalChat "Shot.";
sleep (10 + random 15);
player globalChat "Splash.";
sleep (3 + random 5);

_tubes = 6;
_shellstube = 3;
_rounds = _shellstube * _tubes;
_precision = 60;

_a = 0;
while {_a < _rounds} do
{
	sleep random 2;
	_ammotype createVehicleLocal [(_pos select 0)-(_precision/2)+random _precision,(_pos select 1)-(_precision/2)+random _precision,0];
	_a = _a + 1;
//	player globalChat format["_a: %1",_a];
};

player globalChat "Mission Complete.";

PMC_artyAmmo set [1,(_MyCount - _rounds)];

// debug
if (pmcdb) then
{
	player sideChat format["after firing: arty: %1, mortars: %2, mlrs: %3",(PMC_artyAmmo select 0),(PMC_artyAmmo select 1),(PMC_artyAmmo select 2)];
};

PMC_Mortar_Busy = false;
publicVariable "PMC_Mortar_Busy";
