//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Diary", "rumours!"]];
player createDiaryRecord ["Diary", ["Mission", "You <marker name = 'start'>start</marker> in place. Hunt down the enemy artillery site(s). Use special -> end mission when ready.<br/><br/>Mission<br/><br/>1. WAR SITUATION:<br/>Enemy is trying to take over the objectives in our region, you must prevent that.<br/><br/>2. YOUR MISSION:<br/>Assault the objectives marked in the map with grey or red circle. Green circles are controlled by your forces. Todays special objective is to find and eliminate the enemys artillery site(s) as many as there might be.<br/><br/>3. EXECUTION/INTEL:<br/>Enemy has brought in the full arsenal, infantry, soft vehicles, tanks and helicopters. Be careful with the friendly helicopters because there was Shilkas and SA-11's spotted earlier. The artillery has been deadly during the past few hours.<br/><br/>4. SUPPORT and ORBAT:<br/>Artillery M252 mortars, M101 howitzers and M109 Paladin's are located at the US airbase.<br/><br/>5. SIGNALS and TACTICS:<br/><br/><br/>6. COMBAT EFFICIENCY:<br/>"]];

// tasks need to be in reversed order
objective2 = player createSimpleTask ["Destroy enemy mortars"];
objective2 setSimpleTaskDescription ["Destroy enemy mortars", "Destroy enemy mortars", "Destroy enemy mortars"];
objective1 = player createSimpleTask ["Destroy enemy artillery"];
objective1 setSimpleTaskDescription ["Destroy enemy artillery", "Destroy enemy artillery", "Destroy enemy artillery"];