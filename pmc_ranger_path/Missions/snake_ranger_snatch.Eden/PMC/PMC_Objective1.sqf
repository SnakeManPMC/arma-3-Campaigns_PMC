/*

	Created at 2021-08-21T09:33:21Z with Mission Converter v0.0.1 by PMC

*/
/*

	task ID should be: 1

*/
col1 say "Rus7";
 removeAllWeapons col1;
 col1 setCaptive true;
 [col1] join assault1;
 leader assault1 sideradio "Rwegothim";
 ["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
 WeGotHim=true;
 1 setRadioMsg "Call - Extract";
 "target1" setMarkerType "mil_dot";
 "target1" setMarkerColor "colorgreen";
 "target2" setMarkerType "mil_dot";
 "target2" setMarkerColor "colorgreen";

