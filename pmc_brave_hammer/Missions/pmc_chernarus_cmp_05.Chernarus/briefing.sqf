
player createDiaryRecord ["Diary", ["Command and Signal", "Your squad is 6 man MFR team, callsign Alpha. Transport helo is called Bravo."]];
player createDiaryRecord ["Diary", ["Support", "Your support is Huey callsign Bravo."]];
player createDiaryRecord ["Diary", ["Execution", "From the <marker name='start'>airfield</marker> board the waiting Huey which will insert you to next to the designated <marker name='lz'>LZ</marker>. Your then proceed to conduct reconnaissance on <marker name='target1'>dam</marker> and <marker name='target2'>airstrip</marker> objectives. Use radio to communicate HQ when you have enough intel available.<br /><br />In this mission you are not allowed to make contact. Do not engage the enemy unless you are in under serious threat, do not initiate contact in any situation.<br /><br />If you are detected, break contact immediately and evade the enemies."]];
player createDiaryRecord ["Diary", ["Intel", "Enemy seems to have seized their assault on the airfield, all is quiet now. We have no intel on the airstrip."]];
player createDiaryRecord ["Diary", ["Mission", "Recon <marker name='target1'>dam</marker> and <marker name='target2'>airstrip</marker>. No shooting. Avoid contact at all cost."]];
player createDiaryRecord ["Diary", ["Situation", "The first quiet time after the initial contact is now. Enemy has pulled away and are regrouping for sure, they must have known what hit them."]];

// obj 2 airstrip recon
PMC_recon_airstrip = player createSimpleTask ["Recon airstrip"];
PMC_recon_airstrip setSimpleTaskDescription ["Your objective is to recon the <marker name='target2'>airstrip</marker>.", "Recon airstrip", "Recon airstrip"];
PMC_recon_airstrip setSimpleTaskDestination (getMarkerPos "target2");

// obj 1 damn recon
PMC_recon_dam = player createSimpleTask ["Recon dam"];
PMC_recon_dam setSimpleTaskDescription ["Your objective is to recon the <marker name='target1'>dam</marker>.", "Recon dam", "Recon dam"];
PMC_recon_dam setSimpleTaskDestination (getMarkerPos "target1");
