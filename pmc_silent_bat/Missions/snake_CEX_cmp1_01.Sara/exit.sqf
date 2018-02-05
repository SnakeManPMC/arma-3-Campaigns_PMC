
PMC_Artillery_Rounds = 0;
PMC_Artillery_Rounds = PMC_artyAmmo select 0;
PMC_Mortar_Rounds = 0;
PMC_Mortar_Rounds = PMC_artyAmmo select 1;
PMC_MLRS_Rounds = 0;
PMC_MLRS_Rounds = PMC_artyAmmo select 2;

saveVar "PMC_Artillery_Rounds";
saveVar "PMC_Mortar_Rounds";
saveVar "PMC_MLRS_Rounds";

// add guns & ammo to blow shit up
// west
addMagazinePool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinePool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinePool ["CUP_FlareWhite_M203",50];
addMagazinePool ["CUP_FlareGreen_M203",50];
addMagazinePool ["CUP_FlareRed_M203",50];
addMagazinePool ["CUP_FlareYellow_M203",50];
addMagazinePool ["CUP_1Rnd_HE_M203",50];
addMagazinePool ["CUP_20Rnd_556x45_Stanag",50];
addMagazinePool ["CUP_30Rnd_556x45_G36",50];
addMagazinePool ["CUP_30Rnd_9x19_MP5",50];
addMagazinePool ["CUP_30Rnd_9x19_MP5",50];
addMagazinePool ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",50];
addMagazinePool ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",50];
addMagazinePool ["CUP_5Rnd_762x51_M24",50];
addMagazinePool ["CUP_15Rnd_9x19_M9",50];
addMagazinePool ["CUP_15Rnd_9x19_M9",50];
addMagazinePool ["CUP_10Rnd_127x99_M107",50];
addMagazinePool ["CUP_M136_M",50];
addMagazinePool ["CUP_Javelin_M",50];
addMagazinePool ["CUP_Stinger_M",50];
// east
addMagazinePool ["CUP_30Rnd_545x39_AK_M",50];
addMagazinePool ["CUP_FlareWhite_GP25_M",50];
addMagazinePool ["CUP_FlareGreen_GP25_M",50];
addMagazinePool ["CUP_FlareRed_GP25_M",50];
addMagazinePool ["CUP_FlareYellow_GP25_M",50];
addMagazinePool ["CUP_1Rnd_HE_GP25_M",50];
addMagazinePool ["CUP_30Rnd_545x39_AK_M",50];
addMagazinePool ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",50];
addMagazinePool ["CUP_10Rnd_762x54_SVD_M",50];
addMagazinePool ["CUP_5Rnd_127x108_KSVK_M",50];
addMagazinePool ["CUP_8Rnd_9x18_Makarov_M",50];
addMagazinePool ["CUP_8Rnd_9x18_MakarovSD_M",50];
addMagazinePool ["CUP_PG7V_M",50];
addMagazinePool ["CUP_PG7VR_M",50];
addMagazinePool ["STRELA",50];

// west
addWeaponPool ["CUP_M16A2",12];
addWeaponPool ["CUP_M16A4",12];
addWeaponPool ["CUP_M16A2GL",12];
addWeaponPool ["CUP_M16A4_GL",12];
addWeaponPool ["CUP_m16a4_acg",12];
addWeaponPool ["CUP_M16A4_ACG_GL",12];
addWeaponPool ["M4",12];
addWeaponPool ["M4GL",12];
addWeaponPool ["M4AIM",12];
addWeaponPool ["M4A1SD",12];
addWeaponPool ["CUP_M4SPR",12];
addWeaponPool ["CUP_M4A1",12];
addWeaponPool ["M4A1GL",12];
addWeaponPool ["CUP_arifle_G36K",12];
addWeaponPool ["CUP_arifle_G36C",12];
addWeaponPool ["CUP_arifle_G36A",12];
addWeaponPool ["CUP_MP5A5",12];
addWeaponPool ["CUP_smg_MP5SD6",12];
addWeaponPool ["CUP_lmg_M249",12];
addWeaponPool ["CUP_M240",12];
addWeaponPool ["CUP_srifle_M24_wdl",12];
addWeaponPool ["CUP_M107",12];
addWeaponPool ["CUP_M9",12];
addWeaponPool ["CUP_M9SD",12];
addWeaponPool ["CUP_launch_M136",12];
addWeaponPool ["CUP_launch_Javelin",12];
addWeaponPool ["CUP_launch_FIM92Stinger",12];
// east
addWeaponPool ["AK74",12];
addWeaponPool ["AK74GL",12];
addWeaponPool ["AKS74U",12];
addWeaponPool ["AKS74UN",12];
addWeaponPool ["AKS74PSO",12];
addWeaponPool ["CUP_PK",12];
addWeaponPool ["CUP_SVD",12];
addWeaponPool ["CUP_ksvk",12];
addWeaponPool ["CUP_Makarov",12];
addWeaponPool ["CUP_MakarovSD",12];
addWeaponPool ["CUP_launch_RPG7V",12];
addWeaponPool ["STRELA",12];

// equipment
addMagazinePool ["Laserbatteries",50];
addWeaponPool ["CUP_Laserdesignator",12];
addWeaponPool ["CUP_NVG_PVS7",12];
addWeaponPool ["Binocular",12];
addMagazinePool ["SmokeShellRed",12];
addMagazinePool ["SmokeShellGreen",12];
addMagazinePool ["SmokeShell",12];
addMagazinePool ["HandGrenade",12];
addMagazinePool ["HandGrenade",12];
addMagazinePool ["CUP_PipeBomb_M",12];
addMagazinePool ["TimeBomb",12];
addMagazinePool ["CUP_MineE",12];
addMagazinePool ["CUP_MineE",12];
