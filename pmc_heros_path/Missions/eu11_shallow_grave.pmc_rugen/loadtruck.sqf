
// loads up a JAM3 truck full with basic goodies

private _trk = _this select 0;

clearMagazineCargo _trk;
clearWeaponCargo _trk;

_trk addMagazineCargo ["CUP_30Rnd_556x45_Stanag", 36];
_trk addMagazineCargo ["CUP_30Rnd_556x45_Stanag", 36];
_trk addMagazineCargo ["CUP_1Rnd_HE_M203", 10];
_trk addMagazineCargo ["CUP_1Rnd_HE_M203", 12];
_trk addMagazineCargo ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 12];
_trk addMagazineCargo ["CUP_M136_M", 10];
_trk addMagazineCargo ["CUP_20Rnd_762x51_DMR", 18];

_trk addWeaponCargo ["CUP_M16A2",2];
_trk addWeaponCargo ["CUP_M16A2GL",2];
_trk addWeaponCargo ["CUP_lmg_M249",2];
_trk addWeaponCargo ["CUP_launch_M136",2];
_trk addWeaponCargo ["CUP_M40A3",2];
