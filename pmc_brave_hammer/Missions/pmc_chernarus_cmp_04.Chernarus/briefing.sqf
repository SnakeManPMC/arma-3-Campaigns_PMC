
player createDiaryRecord ["Diary", ["Command and Signal", "Your squad is 6 man MFR team, callsign Alpha. USMC rifle squads are called Bravo, Charlie, Delta and Echo."]];
player createDiaryRecord ["Diary", ["Support", "You are supporting 4 Marine rifle squads."]];
player createDiaryRecord ["Diary", ["Execution", "Your tasked to defend the captured <marker name='target1'>airfield</marker>, do not let any enemy units seize control of the airfield."]];
player createDiaryRecord ["Diary", ["Intel", "You do not know the size of OPFOR whos attacking."]];
player createDiaryRecord ["Diary", ["Mission", "Defend <marker name='target1'>airfield</marker>."]];
player createDiaryRecord ["Diary", ["Situation", "We have just captured Chernarus airfield. This is the first major step in our operations in Chernarus."]];

PMC_capture_airfield = player createSimpleTask ["Defend Airfield"];
PMC_capture_airfield setSimpleTaskDescription ["Your objective is to defend airfield.", "Defend airfield", "Defend airfield"];
PMC_capture_airfield setSimpleTaskDestination (getMarkerPos "target1");
