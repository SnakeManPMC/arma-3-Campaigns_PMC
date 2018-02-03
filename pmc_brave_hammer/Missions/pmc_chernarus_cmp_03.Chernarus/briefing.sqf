
player createDiaryRecord ["Diary", ["Command and Signal", "Your squad is 6 man MFR team, callsign Alpha. USMC rifle squads are called Bravo, Charlie, Delta and Echo."]];
player createDiaryRecord ["Diary", ["Support", "You are supporting 4 Marine rifle squads."]];
player createDiaryRecord ["Diary", ["Execution", "Wait until the Marines get inserted from the helos to the <marker name='lz'>LZ</marker>, keep the LZ secure. Then proceed with them to assault and capture the <marker name='target1'>airfield</marker>."]];
player createDiaryRecord ["Diary", ["Intel", "You know the positions and strenght of enemy forces in the airfield."]];
player createDiaryRecord ["Diary", ["Mission", "Capture enemy held <marker name='target1'>airfield</marker>."]];
player createDiaryRecord ["Diary", ["Situation", "You are our eyes and ears now, keep a note of everything going on around you."]];

PMC_capture_airfield = player createSimpleTask ["Capture Airfield"];
PMC_capture_airfield setSimpleTaskDescription ["Your objective is to capture airfield.", "Capture airfield", "Capture airfield"];
PMC_capture_airfield setSimpleTaskDestination (getMarkerPos "target1");
