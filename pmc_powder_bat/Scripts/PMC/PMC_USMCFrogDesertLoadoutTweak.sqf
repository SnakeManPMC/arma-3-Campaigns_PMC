
diag_log "PMC_USMCFrogDesertLoadoutTweak.sqf executed.";

private _grp = group player;

// binocs cause AI soldiers to equip them and walk around like idiots. smokeshells are useless
{
	_x removeMagazines "SmokeShell";
	_x removeMagazines "SmokeShellRed";
	_x removeMagazines "SmokeShellGreen";
	_x removeWeapon "Binocular";
} forEach units _grp;
player addWeapon "Binocular";

// CUP M249 machine gunners dont have enough ammo, lets add more magazines
{
	if ("CUP_B_USMC_Soldier_AR_FROG_DES" == typeOf _x) then
	{
		diag_log "PMC_USMCFrogDesertLoadoutTweak: detected CUP_B_USMC_Soldier_AR_FROG_DES. adding magazines.";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
	};

	if ("CUP_B_USMC_Soldier_AR_FROG_WDL" == typeOf _x) then
	{
		diag_log "PMC_USMCFrogDesertLoadoutTweak: detected CUP_B_USMC_Soldier_AR_FROG_WDL. adding magazines.";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_x addMagazine "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
	};
} forEach units _grp;

// CUP team leaders have useless smoke grenades, lets remove them and add HE grenades instead
{
	if ("CUP_B_USMC_Soldier_TL_FROG_DES" == typeOf _x) then
	{
		diag_log "PMC_USMCFrogDesertLoadoutTweak: detected . adding magazines.";
		_x removeMagazine "CUP_1Rnd_Smoke_M203";
		_x removeMagazine "CUP_1Rnd_SmokeRed_M203";
		_x removeMagazine "CUP_1Rnd_SmokeGreen_M203";
		_x addMagazine "CUP_1Rnd_HEDP_M203";
		_x addMagazine "CUP_1Rnd_HEDP_M203";
		_x addMagazine "CUP_1Rnd_HEDP_M203";
		_x addMagazine "CUP_1Rnd_HEDP_M203";
	};

	if ("CUP_B_USMC_Soldier_TL_FROG_WDL" == typeOf _x) then
	{
		diag_log "PMC_USMCFrogDesertLoadoutTweak: detected . adding magazines.";
		_x removeMagazine "CUP_1Rnd_Smoke_M203";
		_x removeMagazine "CUP_1Rnd_SmokeRed_M203";
		_x removeMagazine "CUP_1Rnd_SmokeGreen_M203";
		_x addMagazine "CUP_1Rnd_HEDP_M203";
		_x addMagazine "CUP_1Rnd_HEDP_M203";
		_x addMagazine "CUP_1Rnd_HEDP_M203";
		_x addMagazine "CUP_1Rnd_HEDP_M203";
	};
} forEach units _grp;
