
player createDiaryRecord ["Diary", ["Command and Signal", "Your squad is 6 man MFR team, callsign Alpha. Insertion bird is MV-22 Osprey callsign Bravo."]];
player createDiaryRecord ["Diary", ["Support", "You have no support available."]];
player createDiaryRecord ["Diary", ["Execution", "First <marker name='halo'>HALO drop</marker> from MV-22 and glide as close to the airfield as you can/dare.<br/><br/>HALO operation:<br/>Glide towards the target, do not open parachute before you have dropped very very low, perhaps lower than 100m altitude. The whole point of HALO is to drop from high into low so enemy do not have time to detect and shoot you.<br/><br/>When you ground, proceed to get your eyes on the <marker name='target1'>airfield</marker>. Hint: Use binocs, 'ID' targets/objects/vehicles by clicking right mouse button on them. Get to <marker name='gethere'>this location</marker> to accomplish your recon tasks."]];
player createDiaryRecord ["Diary", ["Intel", "We have no intel available, thats your job Marine."]];
player createDiaryRecord ["Diary", ["Mission", "Conduct reconnaissance until you have gathered enough intelligence of enemy strenght in the <marker name='target1'>airfield</marker>."]];
player createDiaryRecord ["Diary", ["Situation", "Our war against the insurgent army of Chedaki is about to begin. Chernarus is no mans land, United States have no friends or intelligence about this place.<br/><br/>The Chedaki is terrorizing the local population, they have seized all the villages and cities, including airfields and harbors."]];

PMC_airfield_recon = player createSimpleTask ["Recon airfield"];
PMC_airfield_recon setSimpleTaskDescription ["Your objective is to recon <marker name='target1'>airfield</marker>.", "Recon airfield", "Recon airfield"];
PMC_airfield_recon setSimpleTaskDestination (getMarkerPos "target1");

/*
player setCurrentTask PMC_airfield_recon;

OPORD from old OFP style briefings
1. SITUATION:
2. MISSION:
3. EXECUTION:
4. SERVICE AND SUPPORT
5. COMMAND AND SIGNAL


template:

player createDiaryRecord ["Diary", ["Command and Signal", ""]];
player createDiaryRecord ["Diary", ["Support", ""]];
player createDiaryRecord ["Diary", ["Execution", ""]];
player createDiaryRecord ["Diary", ["Intel", ""]];
player createDiaryRecord ["Diary", ["Mission", "<marker name='target1'>target 1</marker>."]];
player createDiaryRecord ["Diary", ["Situation", ""]];

PMC_task = player createSimpleTask ["Target 1"];
PMC_task setSimpleTaskDescription ["<marker name='target1'>target 1</marker>.", "Target 1", "Target 1"];
PMC_task setSimpleTaskDestination (getMarkerPos "target1");

*/
