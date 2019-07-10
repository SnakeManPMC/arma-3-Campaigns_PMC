
[] execVM "briefing.sqf";

PAPABEAR = [ West,"HQ" ];

// remove shit from the weaponpool
clearMagazinePool;
clearWeaponPool;

// new LSR stuff, the cool stuff :)
addWeaponpool ["CUP_M4A1_Aim",2];
addWeaponpool ["CUP_M4A1_Aim",3];
addWeaponpool ["M24",1];
addWeaponpool ["CUP_MP5A5",1];
addWeaponpool ["CUP_lmg_M249",1];
addWeaponpool ["CUP_M9SD",4];
addWeaponpool ["CUP_Colt1911",1];
addWeaponpool ["CUP_M9",1];
addWeaponpool ["CUP_M9",4];
addWeaponpool ["CUP_M9SD",3];
addWeaponpool ["CUP_M16A2GL",2];

/*
; formula to add magazines.
; M4, 6 soldiers, each have to have full 9 mags for 4 missions; 6x9x4 = 216 mags
; GL, 2 soldiers, each have to have full 2 mags for 4 missions; 2x2x4 = 16 mags
; MP5, 1 soldiers, each have to have full 9 mags for 4 missions; 1x9x4 = 36 mags
; M249, 2 soldiers, each have to have full 5 mags for 4 missions; 2x5x4 = 40 mags
; Mk23/m9/m1911, 6 soldiers, each have to have full 4 mags for 4 missions; 6x4x4 = 96 mags
*/
addMagazinePool ["CUP_30Rnd_556x45_Stanag",216];
addMagazinePool ["CUP_30Rnd_556x45_Stanag",216];
addMagazinePool ["CUP_1Rnd_HE_M203",16];
addMagazinePool ["CUP_1Rnd_HE_M203",16];
addMagazinePool ["CUP_5Rnd_762x51_M24",50];
addMagazinePool ["CUP_30Rnd_9x19_MP5",36];
addMagazinePool ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",40];
addMagazinePool ["CUP_30Rnd_9x19_MP5",40];
//addMagazinePool ["CUP_M9",96];
addMagazinePool ["CUP_15Rnd_9x19_M9",96];
addMagazinePool ["CUP_15Rnd_9x19_M9",96];
addMagazinePool ["CUP_7Rnd_45ACP_1911",96];
addMagazinePool ["CUP_15Rnd_9x19_M9",96];
addMagazinePool ["CUP_15Rnd_9x19_M9",96];
addMagazinePool ["CUP_FlareGreen_M203",25];
addMagazinePool ["CUP_FlareRed_M203",25];
addMagazinePool ["CUP_FlareGreen_M203",25];
addMagazinePool ["CUP_FlareGreen_M203",25];
addMagazinePool ["SmokeShell",25];
addMagazinePool ["SmokeShell",25];
addMagazinePool ["SmokeShellRed",25];
addMagazinePool ["SmokeShellGreen",25];
addMagazinePool ["handgrenade",50];

addweaponPool ["CUP_NVG_PVS7",6];
addweaponPool ["Binocular",6];
addMagazinePool ["CUP_MineE_M",10];
addMagazinePool ["CUP_PipeBomb_M",10];
addMagazinePool ["Timebomb",10];
