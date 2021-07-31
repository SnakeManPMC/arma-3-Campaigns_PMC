// 0 = execVM "PMC\PMC_Meet_Bravo_Squad.sqf";
leader assault2 sideRadio "Rmeet";
meet1 = true;
sleep 3;

{[_x] join assault1} foreach units assault2;
sleep 7;

["PMC_objective1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
