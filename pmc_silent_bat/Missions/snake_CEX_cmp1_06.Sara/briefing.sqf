//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



Its another day and another mission, all in good fun today.
<br/>




"]];
player createDiaryRecord ["Diary", ["Mission", "

<marker name = 'start'>HQ</marker> is at Rahmadi. Capture the <marker name = 'target1'>Dolores</marker> and <marker name = 'target2'>Ortego</marker> objectives. 
<br/><br/>
M1A1 Abrams tanks and M113 mech infantry has been unloaded to the Sahrani SW coast. Use them effectively.
<br/><br/>
Today you received your first artillery tubes to Rahmadi, they are available under Support.



"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Capture Ortego"];
objective2 setSimpleTaskDescription ["Capture Ortego", "Capture Ortego", "Capture Ortego"];
objective1 = player createSimpleTask ["Capture Dolores"];
objective1 setSimpleTaskDescription ["Capture Dolores", "Capture Dolores", "Capture Dolores"];
