//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Diary", "More demo works, very cool."]];
player createDiaryRecord ["Diary", ["Mission", "1-1-A team <marker name = 'start'>start</marker> from boat. Sneak and demolish <marker name = 'target1'>powerline</marker> objective, then <marker name = 'extract'>extract</marker> back to base.<br/><br/>PMC Cutters<br/><br/>1. SITUATION:<br/>Its ongoing battle with the enemy troops that just won't seem to back down. We are conducting operations across the board with good success.<br/><br/>2. MISSION:<br/>Cut the enemy's power line.<br/><br/>3. EXECUTION:<br/>1-1-A team <marker name = 'start'>start</marker> from boat. Sneak and demolish <marker name = 'target1'>powerline</marker> objective, then <marker name = 'extract'>extract</marker> back to base.<br/><br/>4. SERVICE AND SUPPORT<br/>CRRC boat is the insertion and extraction force, no other support available.<br/><br/>5. COMMAND AND SIGNAL<br/>"]];

// tasks need to be in reversed order
objective2 = player createSimpleTask ["Extract"];
objective2 setSimpleTaskDescription ["Extract", "Extract", "Extract"];
objective1 = player createSimpleTask ["Cut power line"];
objective1 setSimpleTaskDescription ["Cut power line", "Cut power line", "Cut power line"];
