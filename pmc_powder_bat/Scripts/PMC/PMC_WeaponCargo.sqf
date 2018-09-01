
// mission start we fill container with weaponPool goodies
private _v = _this select 0;

// clear default stuff
clearWeaponCargo _v;
clearItemCargo _v;
clearMagazineCargo _v;
clearBackpackCargo _v;

// fill in special good US stuff player would appreciated
_v addBackpackCargo ["CUP_B_AlicePack_Khaki", 2];

_v addItemCargo ["CUP_Binocular_Vector", 1];
_v addItemCargo ["CUP_NVG_PVS7", 2];

_v addMagazineCargo ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 5];
_v addMagazineCargo ["CUP_10Rnd_127x99_M107", 12];
_v addMagazineCargo ["CUP_15Rnd_9x19_M9", 12];
_v addMagazineCargo ["CUP_1Rnd_HE_M203", 12];
_v addMagazineCargo ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", 5];
_v addMagazineCargo ["CUP_20Rnd_762x51_B_SCAR", 12];
_v addMagazineCargo ["CUP_20Rnd_762x51_DMR", 12];
_v addMagazineCargo ["CUP_30Rnd_556x45_Stanag", 30];
_v addMagazineCargo ["CUP_5Rnd_762x51_M24", 12];
_v addMagazineCargo ["CUP_Mine_M", 10];
_v addMagazineCargo ["CUP_PipeBomb_M", 10];

_v addWeaponCargo ["Binocular", 1];
_v addWeaponCargo ["CUP_M107", 1];
_v addWeaponCargo ["CUP_M110_NVG_EP1", 1];
_v addWeaponCargo ["CUP_m240_scoped_EP1", 1];
_v addWeaponCargo ["CUP_M249_EP1", 1];
_v addWeaponCargo ["CUP_M4A1_AIM_SD_camo", 1];
_v addWeaponCargo ["CUP_M9SD", 1];
_v addWeaponCargo ["CUP_srifle_DMR_LeupoldMk4",1];
_v addWeaponCargo ["Rangefinder", 1];
