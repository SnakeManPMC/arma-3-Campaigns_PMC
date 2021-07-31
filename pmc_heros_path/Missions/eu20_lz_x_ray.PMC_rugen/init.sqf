
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "BASE" ];

rngr1 loadStatus "rng1_10";
rngr2 loadStatus "rng2_10";
rngr3 loadStatus "rng3_10";
rngr4 loadStatus "rng4_10";
rngr5 loadStatus "rng5_10";
rngr6 loadStatus "rng6_10";
rngr7 loadStatus "rng7_10";
rngr8 loadStatus "rng8_10";
rngr9 loadStatus "rng9_10";

{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} foreach [rngr2, rngr3, rngr4, rngr5, rngr6, rngr7, rngr8, rngr9];

// heal them
{
	_x setDamage 0;
} forEach units group rngr1;

// new LSR stuff, the cool stuff :)
addWeaponpool ["CUP_M4A1_Aim",8];
addWeaponpool ["CUP_M4A1_Aim",4];
addWeaponpool ["CUP_M4A1_HWS_GL_camo",2];
addWeaponpool ["CUP_M4A1_HWS_GL_camo",2];
addWeaponpool ["CUP_M4SPR",3];
addWeaponpool ["CUP_M40A3",3];
addWeaponpool ["CUP_lmg_M249",2];
addWeaponpool ["CUP_lmg_M249",1];
addWeaponpool ["CUP_MP5A5",2];
addWeaponpool ["CUP_hgun_M9_snds",4];
addWeaponpool ["CUP_Colt1911",1];
addWeaponpool ["CUP_hgun_M9",1];
addWeaponpool ["CUP_hgun_M9",4];
addWeaponpool ["CUP_hgun_M9_snds",3];
addWeaponpool ["CUP_hgun_M9_snds",9];
addWeaponpool ["CUP_hgun_M9_snds",9];
// some anti tank stuff, need OK from Elvisdog.
addWeaponpool ["CUP_launch_M136",2];
addMagazinepool ["CUP_M136_M",8];
addMagazinepool ["CUP_M136_M",8];
addMagazinepool ["CUP_M136_M",8];
addMagazinepool ["CUP_M136_M",8];
addWeaponpool ["CUP_launch_M136",2];
addMagazinepool ["CUP_M136_M",8];
addMagazinepool ["CUP_M136_M",8];
addMagazinepool ["CUP_M136_M",8];
addMagazinepool ["CUP_M136_M",8];

addMagazinepool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinepool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinepool ["CUP_1Rnd_HE_M203",50];
addMagazinepool ["CUP_1Rnd_HE_M203",10];
addMagazinepool ["CUP_5Rnd_762x51_M24",50];
addMagazinepool ["CUP_30Rnd_9x19_MP5",15];
addMagazinepool ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",50];
addMagazinePool ["CUP_20Rnd_762x51_DMR",75];
addMagazinePool ["CUP_20Rnd_762x51_DMR",75];
addmagazinePool ["CUP_30Rnd_9x19_MP5",50];
addMagazinepool ["CUP_15Rnd_9x19_M9",20];
addMagazinepool ["CUP_15Rnd_9x19_M9",20];
addMagazinepool ["CUP_7Rnd_45ACP_1911",20];
addMagazinepool ["CUP_15Rnd_9x19_M9",20];
addMagazinepool ["CUP_15Rnd_9x19_M9",20];
addMagazinepool ["handgrenade",50];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["CUP_FlareRed_M203",25];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["SmokeShell",25];
addMagazinepool ["SmokeShell",25];
addMagazinepool ["SmokeShellRed",25];
addMagazinepool ["SmokeShellGreen",25];

addweaponPool ["CUP_NVG_PVS7",9];
addweaponPool ["Binocular",9];
addMagazinePool ["CUP_MineE_M",10];
addMagazinePool ["CUP_PipeBomb_M",10];
addMagazinePool ["CUP_Timebomb_M",10];

//[] exec "\COC_Mines\scripts\InitMines.sqs"
