//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Diary", "Arcardia under attack, man your positions!"]];
player createDiaryRecord ["Diary", ["Mission", "1-1-A team <marker name = 'start'>start</marker> from Arcadia. Defend it against <marker name = 'target1'>enemy attack</marker>.<br/><br/>PMC Reverse<br/><br/>1. SITUATION:<br/>Some skirmishes are to be expected in our newly captured areas. Enemy is probing our positions with spec ops attacks. Nothing worth mentioning about.<br/><br/>2. MISSION:<br/>Defend Arcadia.<br/><br/>3. EXECUTION:<br/>1-1-A team <marker name = 'start'>start</marker> from Arcadia. Defend it against <marker name = 'target1'>enemy attack</marker>.<br/><br/>4. SERVICE AND SUPPORT<br/>Additional infantry squad callsign 1-1-B, AH-1 Cobra gunship are standing by in case you need CAS.<br/><br/>5. COMMAND AND SIGNAL<br/>"]];

// tasks need to be in reversed order
objective1 = player createSimpleTask ["Defend Arcadia"];
objective1 setSimpleTaskDescription ["Defend Arcadia", "Defend Arcadia", "Defend Arcadia"];