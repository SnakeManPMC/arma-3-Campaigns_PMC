
[] execVM "PMC\PMC_Mission_Start.sqf";
[] execVM "PMC\PMC_weather.sqf";

// setup the third defend objective
"3" objStatus "HIDDEN";
PMC_Pita_Defended = false;

// set the markers to hidden.
{
	_x setMarkerType "empty";
} forEach [ "target3", "keepout3", "keepout4", "keepout5", "keepout6" ];
"keepout1" setMarkerPos [-10000,-10000,0];
"keepout2" setMarkerPos [-10000,-10000,0];
