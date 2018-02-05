
[] execVM "PMC\PMC_Mission_Start.sqf";
[] execVM "PMC\PMC_weather.sqf";

// set the marker to hidden.
"target3" setMarkerType "empty";

// setup the third defend objective
"3" objStatus "HIDDEN";
PMC_Enemy_Counter_Attack = false;
