
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

clearMagazinePool;
clearWeaponPool;

// new LSR stuff, the cool stuff :)
addWeaponpool ["CUP_M4A1_Aim",8];
addWeaponpool ["CUP_M4A1_Aim",4];
addWeaponpool ["CUP_M4A1_HWS_GL_camo",2];
addWeaponpool ["CUP_M4A1_HWS_GL_camo",2];
addWeaponpool ["CUP_M4SPR",1];
addWeaponpool ["CUP_M40A3",1];
addWeaponpool ["CUP_lmg_M249",2];
addWeaponpool ["CUP_lmg_M249",1];
addWeaponpool ["CUP_MP5A5",2];
addWeaponpool ["CUP_M9SD",4];
addWeaponpool ["CUP_Colt1911",1];
addWeaponpool ["CUP_M9",1];
addWeaponpool ["CUP_M9",4];
addWeaponpool ["CUP_M9SD",3];
addWeaponpool ["CUP_M9SD",9];
addWeaponpool ["CUP_M9SD",9];
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

/*
; formula to add magazines.
; M4, 9 soldiers, each have to have full 9 mags for 5 missions; 9x9x5 = 405 mags
; GL, 4 soldiers, each have to have full 2 mags for 5 missions; 4x2x5 = 40 mags
; MP5, 2 soldiers, each have to have full 9 mags for 5 missions; 2x9x5 = 90 mags
; M249, 3 soldiers, each have to have full 5 mags for 5 missions; 3x5x5 = 75 mags
; Mk23/M9/M1911, 9 soldiers, each have to have full 4 mags for 5 missions; 9x4x5 = 180 mags
*/
addMagazinepool ["CUP_30Rnd_556x45_Stanag",405];
addMagazinepool ["CUP_30Rnd_556x45_Stanag",405];
addMagazinepool ["CUP_1Rnd_HE_M203",40];
addMagazinepool ["CUP_1Rnd_HE_M203",40];
addMagazinepool ["CUP_5Rnd_762x51_M24",50];
addMagazinepool ["CUP_30Rnd_9x19_MP5",90];
addMagazinepool ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",75];
addMagazinePool ["CUP_20Rnd_762x51_DMR",75];
addMagazinePool ["CUP_20Rnd_762x51_DMR",75];
addmagazinePool ["CUP_30Rnd_9x19_MP5",50];
//addMagazinepool ["CUP_M9",180];
addMagazinepool ["CUP_15Rnd_9x19_M9",180];
addMagazinepool ["CUP_15Rnd_9x19_M9",180];
addMagazinepool ["CUP_7Rnd_45ACP_1911",180];
addMagazinepool ["CUP_15Rnd_9x19_M9",180];
addMagazinepool ["CUP_15Rnd_9x19_M9",180];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["CUP_FlareRed_M203",25];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["SmokeShell",25];
addMagazinepool ["SmokeShell",25];
addMagazinepool ["SmokeShellRed",25];
addMagazinepool ["SmokeShellGreen",25];
addMagazinepool ["handgrenade",50];

addweaponPool ["CUP_NVG_PVS7",12];
addweaponPool ["Binocular",12];
addMagazinePool ["CUP_MineE_M",10];
addMagazinePool ["CUP_PipeBomb_M",10];
addMagazinePool ["CUP_Timebomb_M",10];

//[] exec "\COC_Mines\scripts\InitMines.sqs"
