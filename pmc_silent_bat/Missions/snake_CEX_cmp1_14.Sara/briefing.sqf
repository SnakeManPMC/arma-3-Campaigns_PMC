//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



If I have to capture another set of cities I go outta my mind. Man I need some R and R...
<br/>




"]];
player createDiaryRecord ["Diary", ["Mission", "

<marker name = 'start'>HQ</marker> is at Rahmadi. Capture <marker name = 'target1'>Corazol north</marker> and <marker name = 'target2'>Pita</marker> area (airstrip, town and harbor) objectives.
<br/><br/>
Make sure you do not enter into the <marker name = 'keepout1'>keep out</marker> area!



"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Capture Pita"];
objective2 setSimpleTaskDescription ["Capture Pita", "Capture Pita", "Capture Pita"];
objective1 = player createSimpleTask ["Capture Corazol north"];
objective1 setSimpleTaskDescription ["Capture Corazol north", "Capture Corazol north", "Capture Corazol north"];
