//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



Just when I thought of we getting away easy, enemy hits us with all their got. OK bring it on SLA, I'm expecting you.
<br/>




"]];
player createDiaryRecord ["Diary", ["Mission", "

<marker name = 'start'>HQ</marker> is at Rahmadi. Capture <marker name = 'target1'>Masbete</marker> and <marker name = 'target2'>Ixel</marker> objectives.



"]];
// tasks need to be in reversed order
objective3 = player createSimpleTask ["Enemy counter attack spotted coming from Carmen into Bagango, your new orders are to <marker name = 'target3'>defend Bagango!</marker> at all cost."];
objective3 setSimpleTaskDescription ["Enemy counter attack spotted coming from Carmen into Bagango, your new orders are to <marker name = 'target3'>defend Bagango!</marker> at all cost.", "Enemy counter attack spotted coming from Carmen into Bagango, your new orders are to <marker name = 'target3'>defend Bagango!</marker> at all cost.", "Enemy counter attack spotted coming from Carmen into Bagango, your new orders are to <marker name = 'target3'>defend Bagango!</marker> at all cost."];
objective2 = player createSimpleTask ["Capture Ixel"];
objective2 setSimpleTaskDescription ["Capture Ixel", "Capture Ixel", "Capture Ixel"];
objective1 = player createSimpleTask ["Capture Masbete"];
objective1 setSimpleTaskDescription ["Capture Masbete", "Capture Masbete", "Capture Masbete"];
