//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Diary", "rumour"]];
player createDiaryRecord ["Diary", ["Mission", "You <marker name = 'start'>start</marker> in field. Clear <marker name = 'target1'>target1</marker> and <marker name = 'target2'>target2</marker> objectives.<br/><br/>You have refuel, ammo and repair trucks located in the starting location. When you call Support from them, make sure you are not taking them into harms way.<br/><br/>Other support is A-10 tank killer and AH-1 Cobra gunship. They will operate under their own accord."]];

// tasks need to be in reversed order
objective2 = player createSimpleTask ["Target 2"];
objective2 setSimpleTaskDescription ["Target 2", "Target 2", "Target 2"];
objective1 = player createSimpleTask ["Target 1"];
objective1 setSimpleTaskDescription ["Target 1", "Target 1", "Target 1"];