
// 0 = [] execVM "recondamdone.sqf";

leader mfr sideChat "Dam recon complete. Over.";
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
pmc_obj1 = true;
["PMC_recon_dam", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
