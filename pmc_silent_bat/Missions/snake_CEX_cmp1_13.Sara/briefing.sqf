//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



Without my buddies I'm nothing, well more or less. With them I can do great things, like blowing up all the enemy forces that face me. Bring it on baby!
<br/>




"]];
player createDiaryRecord ["Diary", ["Mission", "

<marker name = 'start'>HQ</marker> is at Rahmadi. Capture <marker name = 'target1'>Rashidah</marker>, <marker name = 'target2'>Corinto</marker>, <marker name = 'target3'>Bonanza</marker>, <marker name = 'target4'>Pesto</marker> objectives and clear <marker name = 'target5'>intersection</marker> on beach.



"]];
// tasks need to be in reversed order
objective5 = player createSimpleTask ["Clear intersection"];
objective5 setSimpleTaskDescription ["Clear intersection", "Clear intersection", "Clear intersection"];
objective4 = player createSimpleTask ["Capture Pesto"];
objective4 setSimpleTaskDescription ["Capture Pesto", "Capture Pesto", "Capture Pesto"];
objective3 = player createSimpleTask ["Capture Bonanza"];
objective3 setSimpleTaskDescription ["Capture Bonanza", "Capture Bonanza", "Capture Bonanza"];
objective2 = player createSimpleTask ["Capture Corinto"];
objective2 setSimpleTaskDescription ["Capture Corinto", "Capture Corinto", "Capture Corinto"];
objective1 = player createSimpleTask ["Capture Rashidah"];
objective1 setSimpleTaskDescription ["Capture Rashidah", "Capture Rashidah", "Capture Rashidah"];
