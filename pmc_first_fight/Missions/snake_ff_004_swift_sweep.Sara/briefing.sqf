//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Diary", "Okay so the airstrip is ours, next is the town... piece of cake."]];
player createDiaryRecord ["Diary", ["Mission", "You <marker name = 'start'>start</marker> in airstrip. Attack and capture <marker name = 'target1'>town</marker> and <marker name = 'target2'>pier</marker> objectives.<br/><br/>PMC Swift Sweep<br/><br/>1. WAR SITUATION:<br/>The airstrip fell into our hands. We must hold it and seize the remaining real estate of Rahmadi island. By later today we should get our first support troops landing into Rahmadi airstrip.<br/><br/>2. YOUR MISSION:<br/>Capture the town and pier.<br/><br/>3. EXECUTION/INTEL:<br/>You <marker name = 'start'>start</marker> in airstrip. Attack and capture <marker name = 'target1'>town</marker> and <marker name = 'target2'>pier</marker> objectives.<br/><br/>4. SUPPORT and ORBAT:<br/>Your backup squad today is located just south of your position and commence attack with you.<br/><br/>5. SIGNALS and TACTICS:<br/>You are Army squad leader, callsign 1-1-A."]];

// tasks need to be in reversed order
objective2 = player createSimpleTask ["Clear pier"];
objective2 setSimpleTaskDescription ["Clear pier", "Clear pier", "Clear pier"];
objective1 = player createSimpleTask ["Capture town"];
objective1 setSimpleTaskDescription ["Capture town", "Capture town", "Capture town"];