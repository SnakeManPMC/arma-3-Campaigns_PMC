
private _grp = group player;

{
	_x removeMagazines "smokeshell";
	_x removeMagazines "smokeshellred";
	_x removeMagazines "smokeshellgreen";
	_x removeWeapon "binocular";
} forEach units _grp;
player addWeapon "binocular";

{
	if ("CUP_B_USMC_Soldier_AR_FROG_DES" == typeOf _x) then
	{
		_x addMagazine "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
		_x addMagazine "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
		_x addMagazine "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
	};
} forEach units _grp;
