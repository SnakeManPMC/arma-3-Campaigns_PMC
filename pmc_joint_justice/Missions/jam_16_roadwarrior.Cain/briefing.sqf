//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "


Feeling bit oozy today, but hey its nothing I cant handle. But I must focus to keep my buddies alive and not make stupid mistakes.
<br/>



"]];
player createDiaryRecord ["Diary", ["Mission", "


Alpha team <marker name = 'start'>start</marker> from base. Clear <marker name = 'target1'>intersection</marker> and capture <marker name = 'target2'>ruins</marker> objectives.



<br/><br/>PMC Roadwarrior<br/><br/>

1. SITUATION:<br/>
Situation at the moment looks good, no theatening movement in the enemy side is to be expected but we must keep an close eye on their mobile troops so we dont get any surprises.
<br/><br/>

2. MISSION:<br/>
<br/><br/>

3. EXECUTION:<br/>
Alpha team <marker name = 'start'>start</marker> from base. Clear <marker name = 'target1'>intersection</marker> and capture <marker name = 'target2'>ruins</marker> objectives.
<br/><br/>

4. SERVICE AND SUPPORT<br/>
<br/><br/>

5. COMMAND AND SIGNAL<br/>
<br/><br/>




"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Capture Ruins"];
objective2 setSimpleTaskDescription ["Capture Ruins", "Capture Ruins", "Capture Ruins"];
objective1 = player createSimpleTask ["Clear Intersection"];
objective1 setSimpleTaskDescription ["Clear Intersection", "Clear Intersection", "Clear Intersection"];
