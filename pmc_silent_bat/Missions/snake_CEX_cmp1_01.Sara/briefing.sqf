//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



Today the war starts. So many things can go wrong... all the training, all the planning... what will happen in the next coming days?
<br/>




"]];
player createDiaryRecord ["Diary", ["Mission", "

Special Forces <marker name = 'start'>start</marker> at beach. Clear out all enemies in the <marker name = 'target1'>houses</marker> and in the <marker name = 'target2'>airstrip</marker>.



"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Clear out airstrip"];
objective2 setSimpleTaskDescription ["Clear out airstrip", "Clear out airstrip", "Clear out airstrip"];
objective1 = player createSimpleTask ["Clear out houses"];
objective1 setSimpleTaskDescription ["Clear out houses", "Clear out houses", "Clear out houses"];
