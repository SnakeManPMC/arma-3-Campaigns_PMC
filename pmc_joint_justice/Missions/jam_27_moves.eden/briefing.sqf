//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "


I am lucky to be alive let me tell you that right now. The enemy attacks were so fierce and strong that I seriously didn't think I'll make it, but I did. I'm still here, ready to fight some more.
<br/>



"]];
player createDiaryRecord ["Diary", ["Mission", "


Alpha team <marker name = 'start'>start</marker> from airbase. Capture <marker name = 'target1'>Saint Phillippe</marker> and <marker name = 'target2'>Meaux</marker> objectives.



<br/><br/>PMC Moves<br/><br/>

1. SITUATION:<br/>
Today our operations continue in northern Everon, we will start to push south towards the enemy held territory.
<br/><br/>

2. MISSION:<br/>
<br/><br/>

3. EXECUTION:<br/>
Alpha team <marker name = 'start'>start</marker> from airbase. Capture <marker name = 'target1'>Saint Phillippe</marker> and <marker name = 'target2'>Meaux</marker> objectives.
<br/><br/>

4. SERVICE AND SUPPORT<br/>
<br/><br/>

5. COMMAND AND SIGNAL<br/>
<br/><br/>




"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Capture Meaux"];
objective2 setSimpleTaskDescription ["Capture Meaux", "Capture Meaux", "Capture Meaux"];
objective1 = player createSimpleTask ["Capture Saint Phillippe"];
objective1 setSimpleTaskDescription ["Capture Saint Phillippe", "Capture Saint Phillippe", "Capture Saint Phillippe"];
