
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "BASE" ];

SEAL1 loadStatus "sea1_05";
SEAL2 loadStatus "sea2_05";
SEAL3 loadStatus "sea3_05";
SEAL4 loadStatus "sea4_05";
SEAL5 loadStatus "sea5_05";
SEAL6 loadStatus "sea6_05";

{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} forEach [SEAL2, SEAL3, SEAL4, SEAL5, SEAL6];

// heal them
{
	_x setDamage 0;
} forEach units group SEAL1;

// some additional weapons
addWeaponpool ["CUP_M4A1_AIM_SD_camo",1];
addWeaponpool ["CUP_M4A1_HWS_GL_camo",1];
addWeaponpool ["CUP_lmg_M249",1];
addMagazinepool ["CUP_30Rnd_556x45_Stanag",18];
addMagazinepool ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",18];

//[] exec "\COC_Mines\scripts\InitMines.sqs"
