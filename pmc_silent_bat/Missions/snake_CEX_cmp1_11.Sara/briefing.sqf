//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



Time to move forward again, I love this stuff so much. Lets bring the fight to the enemy!
<br/>




"]];
player createDiaryRecord ["Diary", ["Mission", "

<marker name = 'start'>HQ</marker> is at Rahmadi. Capture <marker name = 'target1'>Gulan</marker>, <marker name = 'target2'>Somato</marker> and <marker name = 'target3'>Yoro</marker> objectives.



"]];
// tasks need to be in reversed order
objective3 = player createSimpleTask ["Capture Yoro"];
objective3 setSimpleTaskDescription ["Capture Yoro", "Capture Yoro", "Capture Yoro"];
objective2 = player createSimpleTask ["Capture Somato"];
objective2 setSimpleTaskDescription ["Capture Somato", "Capture Somato", "Capture Somato"];
objective1 = player createSimpleTask ["Capture Gulan"];
objective1 setSimpleTaskDescription ["Capture Gulan", "Capture Gulan", "Capture Gulan"];
