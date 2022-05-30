
// 0 = [] execVM "reconairstripdone.sqf";

leader mfr sideChat "We have eyes on the airstrip, mission accomplished. Over.";
"target2" setMarkerType "mil_dot";
"target2" setMarkerColor "colorgreen";
pmc_obj2 = true;
["PMC_recon_airstrip", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
