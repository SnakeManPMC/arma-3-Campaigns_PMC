//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Diary", "And now power line demolishing, I can't wait!"]];
player createDiaryRecord ["Diary", ["Mission", "1-1-A team <marker name = 'start'>start</marker> from boat. Sneak and demolish <marker name = 'target1'>powerline</marker> objective, then <marker name = 'extract'>extract</marker> back to base.<br/><br/>PMC Failed Power<br/><br/>1. SITUATION:<br/>Its ongoing battle with the enemy troops that just won't seem to back down. We are conducting operations across the board with good success.<br/><br/>2. MISSION:<br/>Destroy the power line.<br/><br/>3. EXECUTION:<br/>1-1-A team <marker name = 'start'>start</marker> from boat. First you get <marker name = 'insert'>inserted</marker> into the beach, then proceed to sneak and demolish <marker name = 'target1'>powerline</marker> objective, then <marker name = 'extract'>extract</marker> back to base.<br/><br/>4. SERVICE AND SUPPORT<br/>CRRC boat is the insertion and UH60 Blackhawk is the extraction force, no other support available.<br/><br/>5. COMMAND AND SIGNAL<br/>"]];

// tasks need to be in reversed order
objective2 = player createSimpleTask ["Extract"];
objective2 setSimpleTaskDescription ["Extract", "Extract", "Extract"];
objective1 = player createSimpleTask ["Demolish power line"];
objective1 setSimpleTaskDescription ["Demolish power line", "Demolish power line", "Demolish power line"];
