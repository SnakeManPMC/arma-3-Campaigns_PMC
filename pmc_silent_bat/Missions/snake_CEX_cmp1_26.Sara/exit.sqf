private ["_tmp"];

_tmp = [] execVM "PMC\PMC_Mission_End.sqf";
waitUntil {scriptDone _tmp};
