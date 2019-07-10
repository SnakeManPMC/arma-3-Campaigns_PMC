
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

// army guys loadout
addWeaponpool ["CUP_M16A2",6];
addWeaponpool ["CUP_M16A2GL",4];
addWeaponpool ["CUP_M4A1",12];
addWeaponpool ["CUP_M4A1_Aim",3];
addWeaponpool ["CUP_M16A4",3];
addWeaponpool ["CUP_lmg_M249",2];
addWeaponpool ["CUP_UZI_SD_EP1",3];
addWeaponpool ["CUP_M9",6];
addWeaponpool ["CUP_M9",6];
// some anti tank stuff, need OK from Elvisdog.
addWeaponpool ["M136",2];
addMagazinepool ["M136",8];
addMagazinepool ["M136",8];
addMagazinepool ["M136",8];
addMagazinepool ["M136",8];
addWeaponpool ["M136",2];
addMagazinepool ["M136",8];
addMagazinepool ["M136",8];
addMagazinepool ["M136",8];
addMagazinepool ["M136",8];

/*
;2 x M240B
; HD stuff for reg infantry
; formula to add magazines.
; M16, 6 soldiers, each have to have full 9 mags for 5 missions; 6x9x5 = 270 mags
; GL, 4 soldiers, each have to have full 2 mags for 5 missions; 4x2x5 = 40 mags
; M9/Glock, 9 soldiers, each have to have full 4 mags for 5 missions; 9x4x5 = 180 mags
*/
addMagazinepool ["CUP_30Rnd_556x45_Stanag",405];
addMagazinepool ["CUP_30Rnd_556x45_Stanag",405];
addMagazinepool ["CUP_30Rnd_556x45_Stanag",405];
addMagazinepool ["CUP_1Rnd_HE_M203",40];
addMagazinepool ["CUP_1Rnd_HE_M203",40];
addMagazinepool ["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",50];
addMagazinepool ["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",50];
addMagazinepool ["CUP_30Rnd_9x19_UZI",180];
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
addMagazinePool ["Timebomb",10];

//[] exec "\COC_Mines\scripts\InitMines.sqs"
