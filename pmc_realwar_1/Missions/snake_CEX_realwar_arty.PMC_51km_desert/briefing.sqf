//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



There is enemy artillery site out there somewhere, its my task to find and destroy it.
<br/>




"]];
player createDiaryRecord ["Diary", ["Mission", "

Your forces <marker name = 'start'>start</marker> at field. Find and destroy enemy artillery site at unknown location.



"]];
// tasks need to be in reversed order
objective1 = player createSimpleTask ["Destroy enemy artillery site"];
objective1 setSimpleTaskDescription ["Destroy enemy artillery site", "Destroy enemy artillery site", "Destroy enemy artillery site"];