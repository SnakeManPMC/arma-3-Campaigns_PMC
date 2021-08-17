//0 = [] execVM "eastdead1.sqf";

leader mfr sideChat "Enemy assault has been halted. Over.";
pmc_opfordead1 = true;
["PMC_capture_airfield", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
