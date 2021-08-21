/*

	Gulan attack commences

*/

leader assault2 sideChat "This is Bravo, we have several platoons worth of enemy soldiers approaching Gulan. Over.";
sleep 7;

leader assault2 sideChat "No way we can hold Gulan. We are being overrun!";
sleep 5;

leader assault2 sideChat "We are retreating to Somato. This is bravo, OUT.";
sleep 3;

// set objective 2 active, retake gulan
[player,["objective2"],["Bravo squad is retreating from Gulan. Your new orders are to retake <marker name = 'gulan'>Gulan</marker>!","Bravo squad is retreating from Gulan. Your new orders are to retake <marker name = 'gulan'>Gulan</marker>!","Bravo squad is retreating from Gulan. Your new orders are to retake <marker name = 'gulan'>Gulan</marker>!"],objNull,1,2,true] call BIS_fnc_taskCreate;
// set the marker to objective
"gulan" setMarkerTypeLocal "Flag";
// variable to checked if enemies are dead, objective completed.
// this is required to be true for the 001 radio call.
PMC_GulanActive = true;

// some flashers for player
hint "There is situation in Gulan, briefing updated!";
titleText["There is situation in Gulan, briefing updated!","plain down",3];

sleep 30;

// show a new instructions.
hint "Use radio 0-0-1 to report when you have cleared Gulan objective.";
titleText ["Use radio 0-0-1 to report when you have cleared Gulan objective.","plain down",3];
// set the radio message for player to use to clear Gulan.
1 setRadioMsg "Report Gulan cleared";
