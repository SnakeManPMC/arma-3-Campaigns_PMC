/*

	PMC_makarovs_for_crews.sqf

	used to add makarvos for the pilots and crews.

*/

private
[
	"_grp"
];

_grp = _this select 0;

// remove any existing makarovs, just in case? :)
{
	_x removeMagazines "CUP_8Rnd_9x18_Makarov_M";
	_x removeWeapon "CUP_Makarov";
} forEach units _grp;

// add makarov and magazines
{
	_x addMagazine "CUP_8Rnd_9x18_Makarov_M";
	_x addMagazine "CUP_8Rnd_9x18_Makarov_M";
	_x addMagazine "CUP_8Rnd_9x18_Makarov_M";
	_x addMagazine "CUP_8Rnd_9x18_Makarov_M";
	_x addWeapon "CUP_Makarov";
} forEach units _grp;
