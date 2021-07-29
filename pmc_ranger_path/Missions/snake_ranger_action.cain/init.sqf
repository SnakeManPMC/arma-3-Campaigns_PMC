
[] execVM "briefing.sqf";

PAPABEAR=[West,"HQ"];

/*
// new LSR stuff, the cool stuff :)
addWeaponpool ["CUP_M16A2",9];
addWeaponpool ["CUP_M16A2GL",9];
addWeaponpool ["LSR_m4_acog",9];
addWeaponpool ["LSR_m4_aim",9];
addWeaponpool ["LSR_m4_m203_acog",9];
addWeaponpool ["LSR_m24_camo",9];
addWeaponpool ["LSR_mp5a4",9];
addWeaponpool ["LSR_mp5sd6",9];
addWeaponpool ["LSR_m249spw_acog",9];
addWeaponpool ["LSR_m240_m145",9];
addWeaponpool ["LSR_m60e4",9];
addWeaponpool ["LSR_m4_acog_sd",9];
addWeaponpool ["LSR_m14_acog_new",9];
addWeaponpool ["LSR_m3",9];
addWeaponpool ["LSR_sr25",9];
addWeaponpool ["CUP_M40A3",9];
addWeaponpool ["LSR_m21_nbp",9];
addWeaponpool ["LSR_m40",9];
addWeaponpool ["LSR_m82a1",9];
addWeaponpool ["LSR_smawLauncher",9];
addWeaponpool ["LSR_lawLauncher",9];
addWeaponpool ["LSR_at4Launcher",9];
addWeaponpool ["LSR_JAM_socom",9];
addWeaponpool ["LSR_JAM_m1911",9];
addWeaponpool ["CUP_hgun_M9",9];
addWeaponpool ["CUP_Glock17_EP1",9];
addWeaponpool ["CUP_Glock17_EP1",9];
addWeaponpool ["CUP_M16A2GL",9];
addWeaponpool ["Binocular",9];
addWeaponPool ["CUP_launch_FIM92Stinger",9];

addMagazinepool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinepool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinepool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinepool ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",50];
addMagazinepool ["CUP_1Rnd_HE_M203",50];
addMagazinepool ["CUP_1Rnd_HE_M203",20];
addMagazinepool ["CUP_5Rnd_762x51_M24",50];
addMagazinepool ["CUP_30Rnd_9x19_MP5",50];
addMagazinepool ["CUP_30Rnd_9x19_MP5",50];
addMagazinepool ["CUP_hgun_M9",50];
addMagazinepool ["CUP_15Rnd_9x19_M9",50];
addMagazinepool ["CUP_15Rnd_9x19_M9",50];
addMagazinepool ["CUP_7Rnd_45ACP_1911",50];
addMagazinepool ["CUP_17Rnd_9x19_glock17",50];
addMagazinepool ["CUP_17Rnd_9x19_glock17",50];
addMagazinepool ["JAM_12Gauge_Shotgun_Mag",50];
addMagazinepool ["CUP_20Rnd_762x51_DMR",50];
addMagazinepool ["CUP_20Rnd_762x51_DMR",50];
addMagazinepool ["LSR_m82a1magAP",50];
addMagazinepool ["LSR_m82a1magIT",50];
addMagazinepool ["LSR_smawAT",50];
addMagazinepool ["LSR_smawHE",50];
addMagazinepool ["LSR_lawAT",50];
addMagazinepool ["LSR_lawHE",50];
addMagazinepool ["LSR_at4rocket",50];
addMagazinepool ["handgrenade",50];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["CUP_FlareRed_M203",25];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["CUP_FlareGreen_M203",25];
addMagazinepool ["SmokeShell",25];
addMagazinepool ["SmokeShell",25];
addMagazinepool ["SmokeShellRed",25];
addMagazinepool ["SmokeShellGreen",25];
addMagazinepool ["CUP_PipeBomb_M",20];
addMagazinePool ["CUP_Stinger_M",10];
*/

s1 loadStatus "01s1";
s2 loadStatus "01s2";
s3 loadStatus "01s3";
s4 loadStatus "01s4";
s5 loadStatus "01s5";
s6 loadStatus "01s6";
s7 loadStatus "01s7";
s8 loadStatus "01s8";
s9 loadStatus "01s9";

if (!alive s2) then { deletevehicle s2 }
if (!alive s3) then { deletevehicle s3 }
if (!alive s4) then { deletevehicle s4 }
if (!alive s5) then { deletevehicle s5 }
if (!alive s6) then { deletevehicle s6 }
if (!alive s7) then { deletevehicle s7 }
if (!alive s8) then { deletevehicle s8 }
if (!alive s9) then { deletevehicle s9 }

{_x setdammage 0} foreach units assault1;
