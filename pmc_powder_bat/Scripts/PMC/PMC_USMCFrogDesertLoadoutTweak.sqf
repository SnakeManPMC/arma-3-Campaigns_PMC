
diag_log "PMC_USMCFrogDesertLoadoutTweak.sqf executed.";

private _grp = group player;

{
	_x removeMagazines "SmokeShell";
	_x removeMagazines "SmokeShellRed";
	_x removeMagazines "SmokeShellGreen";
	_x removeWeapon "Binocular";
} forEach units _grp;
player addWeapon "Binocular";

{
	if ("CUP_B_USMC_Soldier_AR_FROG_DES" == typeOf _x) then
	{
		diag_log "PMC_USMCFrogDesertLoadoutTweak: detected CUP_B_USMC_Soldier_AR_FROG_DES. adding magazines.";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
	};

	if ("CUP_B_USMC_Soldier_AR_FROG_WDL" == typeOf _x) then
	{
		diag_log "PMC_USMCFrogDesertLoadoutTweak: detected CUP_B_USMC_Soldier_AR_FROG_WDL. adding magazines.";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
	};
} forEach units _grp;
