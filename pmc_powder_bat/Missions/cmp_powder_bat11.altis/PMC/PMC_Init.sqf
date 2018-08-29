
// year, month, day, hour, minute
setDate [2008, 11, 3, 8, 30];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

[player, "PMC_WeatherForecast", nil, nil, ""] call BIS_fnc_addCommMenuItem;

// new terrain, new weapons
clearWeaponPool;

addItemPool ["CUP_Binocular_Vector", 2];
addItemPool ["CUP_NVG_PVS14", 2];

addMagazinePool ["CUP_100Rnd_556x45_BetaCMag", 72];
addMagazinePool ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 72];
addMagazinePool ["CUP_10Rnd_127x99_M107", 72];
addMagazinePool ["CUP_15Rnd_9x19_M9", 72];
addMagazinePool ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", 72];
addMagazinePool ["CUP_20Rnd_556x45_Stanag", 72];
addMagazinePool ["CUP_20Rnd_762x51_DMR", 72];
addMagazinePool ["CUP_30Rnd_556x45_G36", 72];
addMagazinePool ["CUP_30Rnd_556x45_Stanag", 72];
addMagazinePool ["CUP_30Rnd_9x19_MP5", 72];
addMagazinePool ["CUP_5Rnd_762x51_M24", 72];
addMagazinePool ["CUP_5x_22_LR_17_HMR_M", 72];
addMagazinePool ["CUP_7Rnd_45ACP_1911", 72];
addMagazinePool ["CUP_HandGrenade_M67",12];
addMagazinePool ["CUP_Javelin_M", 72];
addMagazinePool ["CUP_M136_M", 72];
addMagazinePool ["CUP_PipeBomb_M",12];
addMagazinePool ["CUP_SMAW_HEAA_M", 72];
addMagazinePool ["CUP_SMAW_HEDP_M", 72];
addMagazinePool ["CUP_Stinger_M", 72];
addMagazinePool ["Laserbatteries", 72];

addWeaponPool ["CUP_arifle_G36A", 6];
addWeaponPool ["CUP_arifle_G36C_camo_holo_snds", 6];
addWeaponPool ["CUP_arifle_G36K", 6];
addWeaponPool ["CUP_arifle_M4A1_camo_GL_Holo_Flashlight", 6];
addWeaponPool ["CUP_arifle_M4A1_camo_GL_Holo_Flashlight_Snds", 6];
addWeaponPool ["CUP_arifle_M4A1_M203_ACOG_Laser", 6];
addWeaponPool ["CUP_arifle_M4A1_M203_Holo_Laser", 6];
addWeaponPool ["CUP_arifle_XM8_Carbine", 6];
addWeaponPool ["CUP_arifle_XM8_Carbine_GL", 6];
addWeaponPool ["CUP_arifle_XM8_Compact", 6];
addWeaponPool ["CUP_arifle_xm8_sharpshooter", 6];
addWeaponPool ["CUP_Colt1911", 6];
addWeaponPool ["CUP_huntingrifle", 6];
addWeaponPool ["CUP_Laserdesignator", 6];
addWeaponPool ["CUP_launch_FIM92Stinger", 6];
addWeaponPool ["CUP_launch_Javelin", 6];
addWeaponPool ["CUP_launch_M136", 6];
addWeaponPool ["CUP_launch_Mk153Mod0_SMAWOptics", 6];
addWeaponPool ["CUP_lmg_M249", 6];
addWeaponPool ["CUP_lmg_Mk48_wdl_Aim_Laser", 6];
addWeaponPool ["CUP_M107", 6];
addWeaponPool ["CUP_M16A2", 6];
addWeaponPool ["CUP_M16A2GL", 6];
addWeaponPool ["CUP_M16A4", 6];
addWeaponPool ["CUP_m16a4_acg", 6];
addWeaponPool ["CUP_M16A4_ACG_GL", 6];
addWeaponPool ["CUP_M16A4_GL", 6];
addWeaponPool ["CUP_M240", 6];
addWeaponPool ["CUP_M40A3", 6];
addWeaponPool ["CUP_M4A1", 6];
addWeaponPool ["CUP_M4A1_Aim", 6];
addWeaponPool ["CUP_M4A1_Aim_camo", 6];
addWeaponPool ["CUP_M4A1_AIM_SD_camo", 6];
addWeaponPool ["CUP_M4SPR", 6];
addWeaponPool ["CUP_m8_SAW", 6];
addWeaponPool ["CUP_M9", 6];
addWeaponPool ["CUP_M9SD", 6];
addWeaponPool ["CUP_MG36", 6];
addWeaponPool ["CUP_NVG_HMNVS", 6];
addWeaponPool ["CUP_NVG_PVS7", 6];
addWeaponPool ["CUP_smg_MP5SD6", 6];
addWeaponPool ["CUP_srifle_M14_DMR_LeupoldMk4", 6];
addWeaponPool ["CUP_srifle_M24_wdl", 6];
