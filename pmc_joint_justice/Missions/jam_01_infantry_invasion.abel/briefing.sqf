
player createDiaryRecord ["Diary", ["Diary", "Time to go to war, what can I do.<br/>"]];
player createDiaryRecord ["Diary", ["Mission", "Alpha team <marker name = 'start'>start</marker> from beach. Capture <marker name = 'target1'>fuel depot</marker> and <marker name = 'target2'>base</marker> objectives.<br/><br/><br/><br/>PMC Infantry Invasion<br/><br/>1. SITUATION:<br/>Our war against the russians begins today. Make sure your actions speak for themselves, make no mistakes out there. Lets do this.<br/><br/>2. MISSION:<br/><br/><br/>3. EXECUTION:<br/>Alpha team <marker name = 'start'>start</marker> from beach. Capture <marker name = 'target1'>fuel depot</marker> and <marker name = 'target2'>base</marker> objectives.<br/><br/>4. SERVICE AND SUPPORT<br/>A-10 Close Air Support (CAS) is available from radio comms (0-0-1).<br/><br/>5. COMMAND AND SIGNAL<br/><br/><br/>"]];

objective2 = player createSimpleTask ["Capture base"];
objective2 setSimpleTaskDescription ["Capture base", "Capture base", "Capture base"];
objective1 = player createSimpleTask ["Capture fuel depot"];
objective1 setSimpleTaskDescription ["Capture fuel depot", "Capture fuel depot", "Capture fuel depot"];
